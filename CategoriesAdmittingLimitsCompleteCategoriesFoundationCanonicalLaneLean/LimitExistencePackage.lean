import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean

structure LimitExistencePackage where
  smallCategory : Type u
  diagram : Type v → Type w
  limitCone : Type u
  limitUniversalProperty : Prop

def LimitExistenceClosed (L : LimitExistencePackage) : Prop :=
  L.limitUniversalProperty

structure LimitExistenceEvidence (L : LimitExistencePackage) where
  limitUniversalPropertyClosed : L.limitUniversalProperty

theorem limit_existence_closed_from_evidence (L : LimitExistencePackage) (E : LimitExistenceEvidence L) :
    LimitExistenceClosed L := by
  exact E.limitUniversalPropertyClosed

end CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean
end HautevilleHouse