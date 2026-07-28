import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean

structure SarkisovProgramPackage (Var : Type u) [TopologicalSpace Var] [AlgebraicGeometry.Variety Var] where
  source : Var
  target : Var
  birationalMap : BirationalMapPackage Var
  factorisationIntoElementaryLinks : Prop
  elementaryLinkTypes : Prop
  termination : Prop

structure SarkisovProgramEvidence {Var : Type u} [TopologicalSpace Var] [AlgebraicGeometry.Variety Var]
    (S : SarkisovProgramPackage Var) where
  factorisationClosed : S.factorisationIntoElementaryLinks
  elementaryLinkTypesClosed : S.elementaryLinkTypes
  terminationClosed : S.termination

def SarkisovProgramClosed {Var : Type u} [TopologicalSpace Var] [AlgebraicGeometry.Variety Var]
    (S : SarkisovProgramPackage Var) : Prop :=
  S.factorisationIntoElementaryLinks ∧ S.elementaryLinkTypes ∧ S.termination

theorem sarkisov_program_closed_from_evidence {Var : Type u} [TopologicalSpace Var] [AlgebraicGeometry.Variety Var]
    (S : SarkisovProgramPackage Var) (E : SarkisovProgramEvidence S) : SarkisovProgramClosed S := by
  exact And.intro E.factorisationClosed (And.intro E.elementaryLinkTypesClosed E.terminationClosed)

end BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean
end HautevilleHouse