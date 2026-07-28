import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean

structure HigherDimensionBirationalPackage (Var : Type u) [TopologicalSpace Var] [AlgebraicGeometry.Variety Var] where
  dimension : Nat
  flipsExist : Prop
  terminationFlips : Prop
  abundanceConjecture : Prop
  birationalAutomorphismGroupFinitelyGenerated : Prop

structure HigherDimensionBirationalEvidence (H : HigherDimensionBirationalPackage) where
  flipsExistClosed : H.flipsExist
  terminationFlipsClosed : H.terminationFlips
  abundanceConjectureClosed : H.abundanceConjecture
  birationalAutomorphismGroupFinitelyGeneratedClosed : H.birationalAutomorphismGroupFinitelyGenerated

def HigherDimensionBirationalClosed (H : HigherDimensionBirationalPackage) : Prop :=
  H.flipsExist ∧ H.terminationFlips ∧ H.abundanceConjecture ∧ H.birationalAutomorphismGroupFinitelyGenerated

theorem higher_dimension_birational_closed_from_evidence (H : HigherDimensionBirationalPackage) (E : HigherDimensionBirationalEvidence H) :
    HigherDimensionBirationalClosed H := by
  exact And.intro E.flipsExistClosed
    (And.intro E.terminationFlipsClosed
      (And.intro E.abundanceConjectureClosed E.birationalAutomorphismGroupFinitelyGeneratedClosed))

end BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean
end HautevilleHouse