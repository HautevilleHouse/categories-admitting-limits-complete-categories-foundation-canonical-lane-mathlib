import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean

structure LimitCoconePackage where
  coneExists : Prop
  limitObject : Type
  universalProperty : Prop
  uniquenessOfMorphisms : Prop

structure LimitCoconeEvidence (L : LimitCoconePackage) where
  coneExistsClosed : L.coneExists
  universalPropertyClosed : L.universalProperty
  uniquenessOfMorphismsClosed : L.uniquenessOfMorphisms

def LimitCoconeClosed (L : LimitCoconePackage) : Prop :=
  L.coneExists ∧ L.universalProperty ∧ L.uniquenessOfMorphisms

theorem limit_cocone_closed_from_evidence (L : LimitCoconePackage) (E : LimitCoconeEvidence L) : LimitCoconeClosed L := by
  exact And.intro E.coneExistsClosed (And.intro E.universalPropertyClosed E.uniquenessOfMorphismsClosed)

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end CategoriesAdmittingLimitsCompleteCategoriesFoundationCanonicalLaneLean
end HautevilleHouse
