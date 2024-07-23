import GameServer.Commands
import Mathlib.Init.Set

World "Proof Fundamentals"
Level 1
Title "Transitivity of Subset"

Introduction "
Hello! We'll show that given sets 𝑆,𝑇, and 𝑈 on a type 𝑋,
given h₁: 𝑆⊆𝑇 and h₂: 𝑇⊆𝑈, 𝑆⊆𝑈 "

/-- `intro`Introduces new variables and hypotheses into the proof context
--/
TacticDoc «intro»

/-- `apply`used to apply a hypothesis, theorem, or lemma to the current goal, generating new subgoals/goals
--/
TacticDoc «apply»

/-- `exact`If h is a hypothesis or proof term that matches the target, then exact h will close the goal.
--/
TacticDoc «exact»

variable {X : Type}

namespace hidden

/-- given sets 𝑆,𝑇, and 𝑈 on a type 𝑋, given h₁: 𝑆⊆𝑇 and h₂: 𝑇⊆𝑈, 𝑆⊆𝑈--/
theorem subset_trans {S T U : Set X} (h₁ : S ⊆ T) (h₂ : T ⊆ U) : S ⊆ U :=  by
  Template
    intro x hx
    apply h₂
    apply h₁
    exact hx

Conclusion "
Well done!
Still don't understand? Ask [Proof Guide](https://chatgpt.com/g/g-sbJfmQ6te-proof-guide).
"
end hidden
