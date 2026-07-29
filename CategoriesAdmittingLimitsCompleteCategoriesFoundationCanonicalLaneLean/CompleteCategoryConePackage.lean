import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean

structure CompleteCategoryConePackage where
  category : Type u
  hasAllLimits : Prop
  hasAllColimits : Prop
  limitExistence : LimitExistencePackage
  colimitExistence : ColimitExistencePackage
  coneClosed : Prop

def CompleteCategoryConeClosed (C : CompleteCategoryConePackage) : Prop :=
  C.hasAllLimits ∧ C.hasAllColimits ∧ C.limitExistence.limitUniversalProperty ∧ C.colimitExistence.colimitUniversalProperty ∧ C.coneClosed

structure CompleteCategoryConeEvidence (C : CompleteCategoryConePackage) where
  hasAllLimitsClosed : C.hasAllLimits
  hasAllColimitsClosed : C.hasAllColimits
  limitExistenceClosed : LimitExistenceClosed C.limitExistence
  colimitExistenceClosed : ColimitExistenceClosed C.colimitExistence
  coneClosedClosed : C.coneClosed

theorem complete_category_cone_closed_from_evidence (C : CompleteCategoryConePackage) (E : CompleteCategoryConeEvidence C) :
    CompleteCategoryConeClosed C := by
  exact And.intro E.hasAllLimitsClosed
    (And.intro E.hasAllColimitsClosed
      (And.intro E.limitExistenceClosed
        (And.intro E.colimitExistenceClosed E.coneClosedClosed)))

structure AdmittedObject where
  conePackage : CompleteCategoryConePackage
  conclusion : CompleteCategoryConeClosed conePackage

end CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean
end HautevilleHouse