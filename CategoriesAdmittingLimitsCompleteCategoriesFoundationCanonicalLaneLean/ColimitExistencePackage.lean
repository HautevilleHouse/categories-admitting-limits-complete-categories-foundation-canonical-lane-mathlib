import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean

structure ColimitExistencePackage where
  smallCategory : Type u
  diagram : Type v → Type w
  colimitCocone : Type u
  colimitUniversalProperty : Prop

def ColimitExistenceClosed (C : ColimitExistencePackage) : Prop :=
  C.colimitUniversalProperty

structure ColimitExistenceEvidence (C : ColimitExistencePackage) where
  colimitUniversalPropertyClosed : C.colimitUniversalProperty

theorem colimit_existence_closed_from_evidence (C : ColimitExistencePackage) (E : ColimitExistenceEvidence C) :
    ColimitExistenceClosed C := by
  exact E.colimitUniversalPropertyClosed

end CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean
end HautevilleHouse