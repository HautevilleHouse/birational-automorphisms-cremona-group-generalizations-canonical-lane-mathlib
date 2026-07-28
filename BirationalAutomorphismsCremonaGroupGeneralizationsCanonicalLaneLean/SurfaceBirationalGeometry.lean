import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean

structure SurfaceBirationalPackage (Surface : Type u) [TopologicalSpace Surface] [AlgebraicGeometry.Surface Surface] where
  minimalModel : Surface
  birationalAutomorphismGroup : CremonaGroupPackage
  rationalCurveFibration : Prop
  wittVectorBase : Prop
  classificationEnriques : Prop

structure SurfaceBirationalEvidence (S : SurfaceBirationalPackage) where
  minimalModelClosed : S.minimalModel
  birationalAutomorphismGroupClosed : S.birationalAutomorphismGroup
  rationalCurveFibrationClosed : S.rationalCurveFibration
  wittVectorBaseClosed : S.wittVectorBase
  classificationEnriquesClosed : S.classificationEnriques

def SurfaceBirationalClosed (S : SurfaceBirationalPackage) : Prop :=
  S.minimalModel ∧ S.birationalAutomorphismGroup ∧ S.rationalCurveFibration ∧
  S.wittVectorBase ∧ S.classificationEnriques

theorem surface_birational_closed_from_evidence (S : SurfaceBirationalPackage) (E : SurfaceBirationalEvidence S) :
    SurfaceBirationalClosed S := by
  exact And.intro E.minimalModelClosed
    (And.intro E.birationalAutomorphismGroupClosed
      (And.intro E.rationalCurveFibrationClosed
        (And.intro E.wittVectorBaseClosed E.classificationEnriquesClosed)))

end BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean
end HautevilleHouse