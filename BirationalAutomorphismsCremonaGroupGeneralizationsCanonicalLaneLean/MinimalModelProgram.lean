import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean

structure MinimalModelPackage (Var : Type u) [TopologicalSpace Var] [AlgebraicGeometry.Variety Var] where
  startingVariety : Var
  minimalModel : Var
  birationalMap : BirationalMapPackage Var
  canonicalBundleCondition : Prop
  terminalSingularities : Prop
  existence : Prop
  uniqueness : Prop

structure MinimalModelEvidence {Var : Type u} [TopologicalSpace Var] [AlgebraicGeometry.Variety Var]
    (M : MinimalModelPackage Var) where
  existenceClosed : M.existence
  uniquenessClosed : M.uniqueness
  terminalSingularitiesClosed : M.terminalSingularities

def MinimalModelClosed {Var : Type u} [TopologicalSpace Var] [AlgebraicGeometry.Variety Var]
    (M : MinimalModelPackage Var) : Prop :=
  M.existence ∧ M.uniqueness ∧ M.terminalSingularities

theorem minimal_model_closed_from_evidence {Var : Type u} [TopologicalSpace Var] [AlgebraicGeometry.Variety Var]
    (M : MinimalModelPackage Var) (E : MinimalModelEvidence M) : MinimalModelClosed M := by
  exact And.intro E.existenceClosed (And.intro E.uniquenessClosed E.terminalSingularitiesClosed)

end BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean
end HautevilleHouse