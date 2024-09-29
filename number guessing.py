import random

def guessing_game():
    print("Welcome to the Number Guessing Game!")
    lower_bound = int(input("Enter the lower bound: "))
    upper_bound = int(input("Enter the upper bound: "))
    
    number_to_guess = random.randint(lower_bound, upper_bound)
    attempts = 0
    guessed = False

    while not guessed:
        user_guess = int(input(f"Guess a number between {lower_bound} and {upper_bound}: "))
        attempts += 1

        if user_guess < number_to_guess:
            print("Too low! Try again.")
        elif user_guess > number_to_guess:
            print("Too high! Try again.")
        else:
            guessed = True
            print(f"Congratulations! You've guessed the number {number_to_guess} in {attempts} attempts.")

if __name__ == "__main__":
    guessing_game()
