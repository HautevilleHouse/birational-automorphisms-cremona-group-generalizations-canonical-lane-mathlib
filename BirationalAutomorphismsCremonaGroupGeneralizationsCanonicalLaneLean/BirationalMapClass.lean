import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean

structure BirationalMapPackage (Var : Type u) [TopologicalSpace Var] [AlgebraicGeometry.Variety Var] where
  source : Var
  target : Var
  rationalMap : Prop
  birationalInverse : Prop
  compositionClosure : Prop
  birationalMapClosed : Prop

structure BirationalMapEvidence {Var : Type u} [TopologicalSpace Var] [AlgebraicGeometry.Variety Var]
    (B : BirationalMapPackage Var) where
  rationalMapClosed : B.rationalMap
  birationalInverseClosed : B.birationalInverse
  compositionClosureClosed : B.compositionClosure

def BirationalMapClosed {Var : Type u} [TopologicalSpace Var] [AlgebraicGeometry.Variety Var]
    (B : BirationalMapPackage Var) : Prop :=
  B.rationalMap ∧ B.birationalInverse ∧ B.compositionClosure ∧ B.birationalMapClosed

theorem birational_map_closed_from_evidence {Var : Type u} [TopologicalSpace Var] [AlgebraicGeometry.Variety Var]
    (B : BirationalMapPackage Var) (E : BirationalMapEvidence B) : BirationalMapClosed B := by
  exact And.intro E.rationalMapClosed (And.intro E.birationalInverseClosed (And.intro E.compositionClosureClosed B.birationalMapClosed))

end BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean
end HautevilleHouse