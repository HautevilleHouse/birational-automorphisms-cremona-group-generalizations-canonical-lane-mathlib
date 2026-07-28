import canonicalLaneMathlib.AdmissibleClass

/-!
# Generalized Cremona Group Package
-/

namespace HautevilleHouse
namespace BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean

structure GeneralizedCremonaGroupPackage where
  baseRing : Type u
  dimension : Nat
  cremonaGroup : Type v
  infiniteGeneration : Prop
  torsionElements : Prop

structure GeneralizedCremonaGroupEvidence (G : GeneralizedCremonaGroupPackage) where
  infiniteGenerationClosed : G.infiniteGeneration
  torsionElementsClosed : G.torsionElements

def GeneralizedCremonaGroupClosed (G : GeneralizedCremonaGroupPackage) : Prop :=
  G.infiniteGeneration ∧ G.torsionElements

theorem generalized_cremona_group_closed_from_evidence (G : GeneralizedCremonaGroupPackage) (E : GeneralizedCremonaGroupEvidence G) : GeneralizedCremonaGroupClosed G := by
  exact And.intro E.infiniteGenerationClosed E.torsionElementsClosed

end BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean
end HautevilleHouse