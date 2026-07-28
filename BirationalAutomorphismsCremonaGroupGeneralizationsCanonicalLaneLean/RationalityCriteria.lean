import BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean.CremonaGroupGenerators

namespace HautevilleHouse
namespace BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean

structure RationalityPackage where
  variety : Type u
  isRational : Prop
  isUnirational : Prop
  hasSeparatingField : Prop
  rationalityCriterionSatisfied : Prop

def RationalityClosed (R : RationalityPackage) : Prop :=
  R.isRational ∧ R.rationalityCriterionSatisfied

end BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean
end HautevilleHouse