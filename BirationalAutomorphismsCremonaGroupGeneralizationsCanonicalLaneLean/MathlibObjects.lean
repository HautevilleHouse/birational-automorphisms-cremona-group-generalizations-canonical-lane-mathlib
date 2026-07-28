import BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CremonaSpace where
  carrier : Type
  fieldStructure : Field carrier

structure CremonaAdmittedObject where
  space : CremonaSpace
  projectiveSurface : Prop
  rationalConnected : Prop
  automorphismGroup : Type
  groupTopology : TopologicalSpace automorphismGroup
  groupIsAlgebraic : Prop
  conclusion : groupIsAlgebraic

structure CremonaEndgameState where
  object : CremonaAdmittedObject

def CremonaWitnessClosed (O : CremonaAdmittedObject) : Prop :=
  O.groupIsAlgebraic

end BirationalAutomorphismsCremonaGroupGeneralizationsCanonicalLaneLean
end HautevilleHouse