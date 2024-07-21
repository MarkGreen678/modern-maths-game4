import GameServer.Commands

World "Proof Fundamentals"
Level 1
Title "Transitivity of Subset"

Introduction "
Hello! We'll show that ....

'ring' can be used to simplify and prove equalities involving polynomial-like
expressions. Write 'ring' to solve the goal!"

/-- `ring`simplifys and proves equalities involving polynomial-like
expressions in commutative rings. It leverages the algebraic properties
 of addition and multiplication to handle complex expressions efficiently.
--/
TacticDoc «ring»

NewTactic «ring»

/-- Let $a$ and $b$ be natural numbers. Then $a * b = b * a$
--/
theorem subset_trans {S T U : set X} (h₁ : S ⊆ T) (h₂ : T ⊆ U) : S ⊆ U :=  by
  Template
    ring
Conclusion "
Well done!"
