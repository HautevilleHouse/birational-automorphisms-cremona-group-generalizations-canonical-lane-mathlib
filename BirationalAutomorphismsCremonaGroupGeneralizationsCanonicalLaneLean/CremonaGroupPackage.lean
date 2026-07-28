import BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean

structure CremonaGroupPackage (n : ℕ) where
  field : Type u
  projectiveSpace : Type v
  birationalAutomorphisms : Type w
  groupStructure : Prop
  generationByJonquieres : Prop
  groupStructureTerm : groupStructure
  generationTerm : generationByJonquieres

structure CremonaGroupEvidence {n : ℕ} (C : CremonaGroupPackage n) where
  groupStructureClosed : C.groupStructure
  generationClosed : C.generationByJonquieres

def CremonaGroupClosed {n : ℕ} (C : CremonaGroupPackage n) : Prop :=
  C.groupStructure ∧ C.generationByJonquieres

theorem cremona_group_closed_from_evidence {n : ℕ} (C : CremonaGroupPackage n) (E : CremonaGroupEvidence C) : CremonaGroupClosed C := by
  exact And.intro E.groupStructureClosed E.generationClosed

end BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean
end HautevilleHouse