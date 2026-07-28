import BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean

structure CremonaGroupPackage where
  baseField : Type u
  dimension : Nat
  birationalMaps : Type v
  groupLaw : Type w
  groupClosed : Prop
  generatedByStandardMaps : Prop

def CremonaGroupClosed (C : CremonaGroupPackage) : Prop :=
  C.groupClosed ∧ C.generatedByStandardMaps

end BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean
end HautevilleHouse