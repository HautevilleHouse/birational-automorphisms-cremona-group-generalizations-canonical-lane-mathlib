import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean

structure CremonaAdmittedObject where
  surfaceType : Type u
  topology : TopologicalSpace surfaceType
  smoothSurface : Prop
  rationalSurface : Prop
  birationalAutomorphismGroup : Type v
  cremonaGroupIsGeneratedByStandardInvolutions : Prop
  conclusion : cremonaGroupIsGeneratedByStandardInvolutions

structure AdmissibleClass where
  object : CremonaAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CremonaWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def CremonaWitnessClosed (O : CremonaAdmittedObject) : Prop :=
  O.cremonaGroupIsGeneratedByStandardInvolutions

end BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean
end HautevilleHouse