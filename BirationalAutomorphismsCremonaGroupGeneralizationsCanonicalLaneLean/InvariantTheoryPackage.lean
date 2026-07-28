import canonicalLaneMathlib.AdmissibleClass

/-!
# Invariant Theory Package
-/

namespace HautevilleHouse
namespace BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean

structure InvariantTheoryPackage where
  action : Type u
  ring : Type v
  invariants : Type w
  finiteGeneration : Prop
  separatedness : Prop

structure InvariantTheoryEvidence (I : InvariantTheoryPackage) where
  finiteGenerationClosed : I.finiteGeneration
  separatednessClosed : I.separatedness

def InvariantTheoryClosed (I : InvariantTheoryPackage) : Prop :=
  I.finiteGeneration ∧ I.separatedness

theorem invariant_theory_closed_from_evidence (I : InvariantTheoryPackage) (E : InvariantTheoryEvidence I) : InvariantTheoryClosed I := by
  exact And.intro E.finiteGenerationClosed E.separatednessClosed

end BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean
end HautevilleHouse