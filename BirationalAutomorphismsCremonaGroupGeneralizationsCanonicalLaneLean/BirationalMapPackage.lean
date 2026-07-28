import BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean.CremonaGroupPackage

namespace HautevilleHouse
namespace BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean

structure BirationalMapPackage {n : ℕ} (C : CremonaGroupPackage n) where
  source : C.projectiveSpace
  target : C.projectiveSpace
  rationalMap : Type u
  birational : Prop
  resolutionExists : Prop
  birationalTerm : birational
  resolutionTerm : resolutionExists

structure BirationalMapEvidence {n : ℕ} {C : CremonaGroupPackage n} (M : BirationalMapPackage C) where
  birationalClosed : M.birational
  resolutionClosed : M.resolutionExists

def BirationalMapClosed {n : ℕ} {C : CremonaGroupPackage n} (M : BirationalMapPackage C) : Prop :=
  M.birational ∧ M.resolutionExists

theorem birational_map_closed_from_evidence {n : ℕ} {C : CremonaGroupPackage n} (M : BirationalMapPackage C) (E : BirationalMapEvidence M) : BirationalMapClosed M := by
  exact And.intro E.birationalClosed E.resolutionClosed

end BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean
end HautevilleHouse