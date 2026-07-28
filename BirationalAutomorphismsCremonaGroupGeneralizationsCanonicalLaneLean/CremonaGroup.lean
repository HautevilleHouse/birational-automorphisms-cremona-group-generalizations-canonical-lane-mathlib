import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean

structure CremonaGroupPackage (R : Type u) [CommRing R] where
  dimension : Nat
  rationalSurface : Type v
  rationalSurfaceTopology : TopologicalSpace rationalSurface
  birationalMaps : Type w
  groupStructure : Group birationalMaps
  standardInvolutions : List birationalMaps
  generationStatement : Prop
  generationProof : generationStatement

structure CremonaGroupEvidence {R : Type u} [CommRing R] (C : CremonaGroupPackage R) where
  generationClosed : C.generationStatement

def CremonaGroupClosed {R : Type u} [CommRing R] (C : CremonaGroupPackage R) : Prop :=
  C.generationStatement

theorem cremona_group_closed_from_evidence {R : Type u} [CommRing R] (C : CremonaGroupPackage R) (E : CremonaGroupEvidence C) : CremonaGroupClosed C := by
  exact E.generationClosed

end BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean
end HautevilleHouse