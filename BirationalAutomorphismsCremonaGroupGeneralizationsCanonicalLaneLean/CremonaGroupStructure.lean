import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean

structure CremonaGroupPackage where
  field : Type u
  projectiveSpace : Type v
  groupOperation : Type w
  birationalAutomorphismsSet : Prop
  groupLaw : Prop
  groupLawClosed : groupLaw

structure CremonaGroupEvidence (C : CremonaGroupPackage) where
  birationalAutomorphismsSetClosed : C.birationalAutomorphismsSet
  groupLawClosed : C.groupLawClosed

def CremonaGroupClosed (C : CremonaGroupPackage) : Prop :=
  C.birationalAutomorphismsSet ∧ C.groupLaw

theorem cremona_group_closed_from_evidence (C : CremonaGroupPackage) (E : CremonaGroupEvidence C) :
    CremonaGroupClosed C := by
  exact And.intro E.birationalAutomorphismsSetClosed E.groupLawClosed

end BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean
end HautevilleHouse