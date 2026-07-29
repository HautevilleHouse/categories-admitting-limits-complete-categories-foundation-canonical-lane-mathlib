import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean.FunctorCategoryLimits

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean

structure LimitsPersistencePackage {C D : CompleteCategoryPackage} (F : FunctorCategoryLimitsPackage C D) where
  limitPersistenceUnderComposition : Prop
  limitPersistenceUnderIdentity : Prop

structure LimitsPersistenceEvidence {C D : CompleteCategoryPackage} {F : FunctorCategoryLimitsPackage C D} (L : LimitsPersistencePackage F) where
  limitPersistenceUnderCompositionClosed : L.limitPersistenceUnderComposition
  limitPersistenceUnderIdentityClosed : L.limitPersistenceUnderIdentity

def LimitsPersistenceClosed {C D : CompleteCategoryPackage} {F : FunctorCategoryLimitsPackage C D} (L : LimitsPersistencePackage F) : Prop :=
  L.limitPersistenceUnderComposition ∧ L.limitPersistenceUnderIdentity

theorem limits_persistence_closed_from_evidence {C D : CompleteCategoryPackage} {F : FunctorCategoryLimitsPackage C D} (L : LimitsPersistencePackage F) (E : LimitsPersistenceEvidence L) : LimitsPersistenceClosed L := by
  exact And.intro E.limitPersistenceUnderCompositionClosed E.limitPersistenceUnderIdentityClosed

end CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean
end HautevilleHouse
