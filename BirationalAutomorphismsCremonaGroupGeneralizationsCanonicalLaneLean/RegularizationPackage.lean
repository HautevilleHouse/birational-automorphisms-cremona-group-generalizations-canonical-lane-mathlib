import BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean.BirationalMapPackage

namespace HautevilleHouse
namespace BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean

structure RegularizationPackage {n : ℕ} {C : CremonaGroupPackage n} (M : BirationalMapPackage C) where
  regularModel : Type u
  blowupSequence : Type v
  regularModelExists : Prop
  blowupEffective : Prop
  regularModelTerm : regularModelExists
  blowupTerm : blowupEffective

structure RegularizationEvidence {n : ℕ} {C : CremonaGroupPackage n} {M : BirationalMapPackage C} (R : RegularizationPackage M) where
  regularModelClosed : R.regularModelExists
  blowupClosed : R.blowupEffective

def RegularizationClosed {n : ℕ} {C : CremonaGroupPackage n} {M : BirationalMapPackage C} (R : RegularizationPackage M) : Prop :=
  R.regularModelExists ∧ R.blowupEffective

theorem regularization_closed_from_evidence {n : ℕ} {C : CremonaGroupPackage n} {M : BirationalMapPackage C} (R : RegularizationPackage M) (E : RegularizationEvidence R) : RegularizationClosed R := by
  exact And.intro E.regularModelClosed E.blowupClosed

end BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean
end HautevilleHouse