import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean.CompleteCategoryLimits

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean

structure FunctorCategoryLimitsPackage (C D : CompleteCategoryPackage) where
  functorType : Type u
  naturalTransformationType : Type v
  limitPreservation : Prop
  colimitPreservation : Prop

structure FunctorCategoryLimitsEvidence {C D : CompleteCategoryPackage} (F : FunctorCategoryLimitsPackage C D) where
  limitPreservationClosed : F.limitPreservation
  colimitPreservationClosed : F.colimitPreservation

def FunctorCategoryLimitsClosed {C D : CompleteCategoryPackage} (F : FunctorCategoryLimitsPackage C D) : Prop :=
  F.limitPreservation ∧ F.colimitPreservation

theorem functor_category_limits_closed_from_evidence {C D : CompleteCategoryPackage} (F : FunctorCategoryLimitsPackage C D) (E : FunctorCategoryLimitsEvidence F) : FunctorCategoryLimitsClosed F := by
  exact And.intro E.limitPreservationClosed E.colimitPreservationClosed

end CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean
end HautevilleHouse
