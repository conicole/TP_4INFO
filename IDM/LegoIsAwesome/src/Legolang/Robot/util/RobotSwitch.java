/**
 * <copyright>
 * </copyright>
 *
 * $Id$
 */
package Legolang.Robot.util;

import Legolang.Robot.*;

import java.util.List;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * The <b>Switch</b> for the model's inheritance hierarchy.
 * It supports the call {@link #doSwitch(EObject) doSwitch(object)}
 * to invoke the <code>caseXXX</code> method for each class of the model,
 * starting with the actual class of the object
 * and proceeding up the inheritance hierarchy
 * until a non-null result is returned,
 * which is the result of the switch.
 * <!-- end-user-doc -->
 * @see Legolang.Robot.RobotPackage
 * @generated
 */
public class RobotSwitch {
	/**
	 * The cached model package
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected static RobotPackage modelPackage;

	/**
	 * Creates an instance of the switch.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public RobotSwitch() {
		if (modelPackage == null) {
			modelPackage = RobotPackage.eINSTANCE;
		}
	}

	/**
	 * Calls <code>caseXXX</code> for each class of the model until one returns a non null result; it yields that result.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the first non-null result returned by a <code>caseXXX</code> call.
	 * @generated
	 */
	public Object doSwitch(EObject theEObject) {
		return doSwitch(theEObject.eClass(), theEObject);
	}

	/**
	 * Calls <code>caseXXX</code> for each class of the model until one returns a non null result; it yields that result.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the first non-null result returned by a <code>caseXXX</code> call.
	 * @generated
	 */
	protected Object doSwitch(EClass theEClass, EObject theEObject) {
		if (theEClass.eContainer() == modelPackage) {
			return doSwitch(theEClass.getClassifierID(), theEObject);
		} else {
			List eSuperTypes = theEClass.getESuperTypes();
			return
				eSuperTypes.isEmpty() ?
					defaultCase(theEObject) :
					doSwitch((EClass)eSuperTypes.get(0), theEObject);
		}
	}

	/**
	 * Calls <code>caseXXX</code> for each class of the model until one returns a non null result; it yields that result.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the first non-null result returned by a <code>caseXXX</code> call.
	 * @generated
	 */
	protected Object doSwitch(int classifierID, EObject theEObject) {
		switch (classifierID) {
			case RobotPackage.ORDER_ROBOT: {
				OrderRobot orderRobot = (OrderRobot)theEObject;
				Object result = caseOrderRobot(orderRobot);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case RobotPackage.MOVE: {
				move move = (move)theEObject;
				Object result = casemove(move);
				if (result == null) result = caseOrderRobot(move);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case RobotPackage.BIP: {
				bip bip = (bip)theEObject;
				Object result = casebip(bip);
				if (result == null) result = caseOrderRobot(bip);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case RobotPackage.TURN: {
				turn turn = (turn)theEObject;
				Object result = caseturn(turn);
				if (result == null) result = caseOrderRobot(turn);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case RobotPackage.STOP_ENGINE: {
				stopEngine stopEngine = (stopEngine)theEObject;
				Object result = casestopEngine(stopEngine);
				if (result == null) result = caseOrderRobot(stopEngine);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case RobotPackage.DISPLAY: {
				display display = (display)theEObject;
				Object result = casedisplay(display);
				if (result == null) result = caseOrderRobot(display);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case RobotPackage.TURN_ANGLE: {
				turnAngle turnAngle = (turnAngle)theEObject;
				Object result = caseturnAngle(turnAngle);
				if (result == null) result = caseOrderRobot(turnAngle);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case RobotPackage.OBSTACLE: {
				obstacle obstacle = (obstacle)theEObject;
				Object result = caseobstacle(obstacle);
				if (result == null) result = caseOrderRobot(obstacle);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case RobotPackage.HAS_TURNED: {
				hasTurned hasTurned = (hasTurned)theEObject;
				Object result = casehasTurned(hasTurned);
				if (result == null) result = caseOrderRobot(hasTurned);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			default: return defaultCase(theEObject);
		}
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>Order Robot</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>Order Robot</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public Object caseOrderRobot(OrderRobot object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>move</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>move</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public Object casemove(move object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>bip</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>bip</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public Object casebip(bip object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>turn</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>turn</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public Object caseturn(turn object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>stop Engine</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>stop Engine</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public Object casestopEngine(stopEngine object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>display</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>display</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public Object casedisplay(display object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>turn Angle</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>turn Angle</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public Object caseturnAngle(turnAngle object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>obstacle</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>obstacle</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public Object caseobstacle(obstacle object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>has Turned</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>has Turned</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public Object casehasTurned(hasTurned object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>EObject</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch, but this is the last case anyway.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>EObject</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject)
	 * @generated
	 */
	public Object defaultCase(EObject object) {
		return null;
	}

} //RobotSwitch
