/**
 * <copyright>
 * </copyright>
 *
 * $Id$
 */
package Legolang.Robot.impl;

import Legolang.Robot.*;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;

import org.eclipse.emf.ecore.impl.EFactoryImpl;

import org.eclipse.emf.ecore.plugin.EcorePlugin;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model <b>Factory</b>.
 * <!-- end-user-doc -->
 * @generated
 */
public class RobotFactoryImpl extends EFactoryImpl implements RobotFactory {
	/**
	 * Creates the default factory implementation.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public static RobotFactory init() {
		try {
			RobotFactory theRobotFactory = (RobotFactory)EPackage.Registry.INSTANCE.getEFactory("Lego-lg.legorb"); 
			if (theRobotFactory != null) {
				return theRobotFactory;
			}
		} catch (Exception exception) {
			EcorePlugin.INSTANCE.log(exception);
		}
		return new RobotFactoryImpl();
	}

	/**
	 * Creates an instance of the factory.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public RobotFactoryImpl() {
		super();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EObject create(EClass eClass) {
		switch (eClass.getClassifierID()) {
			case RobotPackage.ORDER_ROBOT: return createOrderRobot();
			case RobotPackage.MOVE: return createmove();
			case RobotPackage.BIP: return createbip();
			case RobotPackage.TURN: return createturn();
			case RobotPackage.STOP_ENGINE: return createstopEngine();
			case RobotPackage.DISPLAY: return createdisplay();
			case RobotPackage.TURN_ANGLE: return createturnAngle();
			case RobotPackage.OBSTACLE: return createobstacle();
			case RobotPackage.HAS_TURNED: return createhasTurned();
			default:
				throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
		}
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public OrderRobot createOrderRobot() {
		OrderRobotImpl orderRobot = new OrderRobotImpl();
		return orderRobot;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public move createmove() {
		moveImpl move = new moveImpl();
		return move;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public bip createbip() {
		bipImpl bip = new bipImpl();
		return bip;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public turn createturn() {
		turnImpl turn = new turnImpl();
		return turn;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public stopEngine createstopEngine() {
		stopEngineImpl stopEngine = new stopEngineImpl();
		return stopEngine;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public display createdisplay() {
		displayImpl display = new displayImpl();
		return display;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public turnAngle createturnAngle() {
		turnAngleImpl turnAngle = new turnAngleImpl();
		return turnAngle;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public obstacle createobstacle() {
		obstacleImpl obstacle = new obstacleImpl();
		return obstacle;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public hasTurned createhasTurned() {
		hasTurnedImpl hasTurned = new hasTurnedImpl();
		return hasTurned;
	}


	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public RobotPackage getRobotPackage() {
		return (RobotPackage)getEPackage();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @deprecated
	 * @generated
	 */
	public static RobotPackage getPackage() {
		return RobotPackage.eINSTANCE;
	}

} //RobotFactoryImpl
