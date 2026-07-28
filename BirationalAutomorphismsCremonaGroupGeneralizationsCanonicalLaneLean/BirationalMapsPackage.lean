import canonicalLaneMathlib.AdmissibleClass

/-!
# Birational Maps Package
-/

namespace HautevilleHouse
namespace BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean

structure BirationalMapsPackage where
  baseVariety : Type u
  targetVariety : Type v
  rationalMaps : Type w
  birationalMaps : Type x
  compositionDefined : Prop
  inverseDefined : Prop

structure BirationalMapsEvidence (B : BirationalMapsPackage) where
  compositionDefinedClosed : B.compositionDefined
  inverseDefinedClosed : B.inverseDefined

def BirationalMapsClosed (B : BirationalMapsPackage) : Prop := B.compositionDefined ∧ B.inverseDefined

theorem birational_maps_closed_from_evidence (B : BirationalMapsPackage) (E : BirationalMapsEvidence B) : BirationalMapsClosed B := by
  exact And.intro E.compositionDefinedClosed E.inverseDefinedClosed

end BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean
end HautevilleHouse