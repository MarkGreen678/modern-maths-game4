import GameServer.Commands

World "Proof Fundamentals"
Level 1
Title "Transitivity of Subset"

Introduction "
Hello! We'll show that given sets 𝑆,𝑇, and 𝑈 on a type 𝑋,
 given h₁: 𝑆⊆𝑇 and h₂: 𝑇⊆𝑈, 𝑆⊆𝑈 "

/-- given sets 𝑆,𝑇, and 𝑈 on a type 𝑋,
 given h₁: 𝑆⊆𝑇 and h₂: 𝑇⊆𝑈, 𝑆⊆𝑈
--/
theorem subset_trans {S T U : set X} (h₁ : S ⊆ T) (h₂ : T ⊆ U) : S ⊆ U :=  by
  Template
    intros x hx
    apply h₂
    apply h₁
    exact hx
Conclusion "
Well done!

Still don't understand? Ask [Proof Guide](https://chatgpt.com/g/g-sbJfmQ6te-proof-guide).
"
