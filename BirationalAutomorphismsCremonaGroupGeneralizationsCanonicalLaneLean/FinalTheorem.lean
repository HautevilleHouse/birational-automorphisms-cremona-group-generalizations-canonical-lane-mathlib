import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean

def ConstrainedCremonaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cremona_endgame (A : AdmissibleClass) :
    ConstrainedCremonaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean
end HautevilleHouse