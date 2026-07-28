import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean

structure CremonaAdmittedObject where
  variety : Type u
  birationalAutomorphismGroup : Type v
  rank : ℕ
  generators : List (birationalAutomorphismGroup)
  relations : Prop
  conclusion : Prop

def CremonaWitnessClosed (O : CremonaAdmittedObject) : Prop :=
  O.conclusion

structure AdmissibleClass where
  object : CremonaAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CremonaWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean
end HautevilleHouse