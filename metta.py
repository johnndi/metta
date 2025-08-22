from hyperon import MeTTa

metta = MeTTa()

def add_member(name):
    # Just adding a person does not need a relation, but we can store it
    metta.space().add_atom(metta.parse_single(f"(Person {name})"))
    print(f"Added member: {name}")

def add_relationship(parent, child):
    metta.space().add_atom(metta.parse_single(f"(Parent {parent} {child})"))
    print(f"Added relationship: {parent} -> {child}")

def get_children(parent):
    query = metta.parse_single(f"(Parent {parent} $x)")
    result = metta.space().query(query)
    children = [r.get("$x") for r in result if "$x" in r]
    print(f"Children of {parent}: {children if children else 'None'}")

def get_parents(child):
    query = metta.parse_single(f"(Parent $x {child})")
    result = metta.space().query(query)
    parents = [r.get("$x") for r in result if "$x" in r]
    print(f"Parents of {child}: {parents if parents else 'None'}")


def main():
    while True:
        print("\n--- Family App ---")
        print("1. Add member")
        print("2. Add relationship")
        print("3. Get children")
        print("4. Get parents")
        print("5. Exit")
        choice = input("Choose: ")

        if choice == "1":
            name = input("Enter member name: ")
            add_member(name)

        elif choice == "2":
            parent = input("Enter parent name: ")
            child = input("Enter child name: ")
            add_relationship(parent, child)

        elif choice == "3":
            parent = input("Enter parent name: ")
            get_children(parent)

        elif choice == "4":
            child = input("Enter child name: ")
            get_parents(child)

        elif choice == "5":
            print("Goodbye!")
            break

        else:
            print("Invalid choice, try again.")

if __name__ == "__main__":
    main()
