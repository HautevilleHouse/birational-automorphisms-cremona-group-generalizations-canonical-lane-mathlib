import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean

structure RationalSurfacePackage where
  surface : Type u
  topology : TopologicalSpace surface
  smoothStructure : Prop
  birationalMapToProjectiveSpace : Prop
  birationalMapInverse : Prop
  rationalFunctionField : Type v
  fieldOfDefinition : Type w
  isRational : Prop
  rationalityProof : isRational

structure RationalSurfaceEvidence (R : RationalSurfacePackage) where
  smoothStructureClosed : R.smoothStructure
  birationalMapToProjectiveSpaceClosed : R.birationalMapToProjectiveSpace
  birationalMapInverseClosed : R.birationalMapInverse
  isRationalClosed : R.isRational

def RationalSurfaceClosed (R : RationalSurfacePackage) : Prop :=
  R.smoothStructure ∧ R.birationalMapToProjectiveSpace ∧ R.birationalMapInverse ∧ R.isRational

theorem rational_surface_closed_from_evidence (R : RationalSurfacePackage) (E : RationalSurfaceEvidence R) : RationalSurfaceClosed R := by
  exact And.intro E.smoothStructureClosed (And.intro E.birationalMapToProjectiveSpaceClosed (And.intro E.birationalMapInverseClosed E.isRationalClosed))

end BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean
end HautevilleHouse