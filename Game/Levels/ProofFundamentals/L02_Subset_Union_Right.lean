import GameServer.Commands
import Game.Metadata
import Mathlib.Init.Set

World "ProofFundamentals"
Level 2
Title "Subset Union Right"

Introduction "
Hello! Given sets S and T on a type X, show T ⊆ S∪T

To start, introduce x of type X and a new hypothesis,
let's call it ht, which assumes x∈T

Next, you need to use the `right` tactic to rewrite the
goal to that of showing x∈T ONLY. We can do this since
to show an `or` statement, one only needs to show the left
or right disjunct (or both, if you so with!)

Finally, think carefully about how you might close the goal.
Can you take inspiration from the previous level?
"

/-- `right` directs the proof towards the right disjunct in a
logical "or" statement. Essentially, it changes the goal to
one of showing the right side of an "or" statement ONLY
-/
TacticDoc «right»

NewTactic right

variable {X : Type}

/-- Given sets S and T on a type X, show T ⊆ S ∪ T-/
Statement {S U : Set X} : T ⊆ S ∪ T := by
  intro x ht
  right
  exact ht

Conclusion "
Well done!
Still don't understand? Ask [Proof Guide](https://chatgpt.com/g/g-sbJfmQ6te-proof-guide).
"
