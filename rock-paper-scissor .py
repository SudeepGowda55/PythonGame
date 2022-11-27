# importing random module
import random

def gamewin (comp, you):
   if comp == you: print ("The game is tie")
   elif comp == "rock":
     if you =="paper":
        print ("You win")
     elif you == "scissor":
        print("You Lost")
   elif comp == "paper" :
       if you == "rock" :
        print("You Lost")
       elif you == "Scissor" :
        print("You win")
   elif comp == "scissor" :
       if you == "rock" :
        print("You win")
       elif you == "paper" :
        print("You Lost")

print("Comp turn : rock or paper or scissor ")
randno = random.randint(1,3)
print(randno)
if   randno ==1:
    comp = "rock"
elif randno ==2: 
    comp = "paper"
elif randno ==3:
    comp = "scissor"

you = input("Player's Turn: rock or paper or scissor\n")

print(f"Computer choose {comp}")
print(f"You choose {you}")
gamewin (comp , you)