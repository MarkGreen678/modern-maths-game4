import GameServer.Commands
import Game.Metadata
import Mathlib.Init.Set

World "ProofFundamentals"
Level 1
Title "Transitivity of Subset"

Introduction "
Hello! Given sets 𝑆,𝑇, and 𝑈 on a type 𝑋, h₁: 𝑆⊆𝑇 and h₂: 𝑇⊆𝑈, we'll show 𝑆⊆𝑈

To start, introduce x of type X and a new hypothesis,
let's call it hx, which assumes x∈S. We do this using
the 'intro' tactic. You may do this in two steps, by executing
`intro x` followed by `intro hs`, or all together by typing
`intro x hs`

Next, you need to use the `apply` tactic to rewrite the
goal to bring it closer to your hypotheses. To do this,
write `apply` followed by the hypothesis you wish to rewrite with.
Think carefully about what you have to use here!

To close the goal, note that if your goal is the same as one of
your hypotheses, writing `exact _`, replacing _ with this hypothesis
will close the goal
"

/-- `intro` nIntroduces new variables and hypotheses into the proof context

-/
TacticDoc «intro»


/-- `apply` used to apply a hypothesis, theorem, or lemma to
the current goal, generating new subgoals/goals
-/
TacticDoc «apply»

/-- `exact` If h is a hypothesis or proof term that matches the target, then exact h will close the goal.
-/
TacticDoc «exact»

NewTactic intro apply exact

variable {X : Type}

/-- Given sets 𝑆,𝑇, and 𝑈 on a type 𝑋, h₁: 𝑆⊆𝑇 and h₂: 𝑇⊆𝑈, we'll show 𝑆⊆𝑈--/
Statement {S T U : Set X} (h₁ : S ⊆ T) (h₂ : T ⊆ U) : S ⊆ U :=  by
  intro x hx
  apply h₂
  apply h₁
  exact hx

Conclusion "
Well done!
Still don't understand? Ask [Proof Guide](https://chatgpt.com/g/g-sbJfmQ6te-proof-guide).
"
