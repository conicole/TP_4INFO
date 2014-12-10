/**
 * <copyright>
 * </copyright>
 *
 * $Id$
 */
package Legolang.Robot.util;

import Legolang.Robot.*;

import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;

import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * The <b>Adapter Factory</b> for the model.
 * It provides an adapter <code>createXXX</code> method for each class of the model.
 * <!-- end-user-doc -->
 * @see Legolang.Robot.RobotPackage
 * @generated
 */
public class RobotAdapterFactory extends AdapterFactoryImpl {
	/**
	 * The cached model package.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected static RobotPackage modelPackage;

	/**
	 * Creates an instance of the adapter factory.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public RobotAdapterFactory() {
		if (modelPackage == null) {
			modelPackage = RobotPackage.eINSTANCE;
		}
	}

	/**
	 * Returns whether this factory is applicable for the type of the object.
	 * <!-- begin-user-doc -->
	 * This implementation returns <code>true</code> if the object is either the model's package or is an instance object of the model.
	 * <!-- end-user-doc -->
	 * @return whether this factory is applicable for the type of the object.
	 * @generated
	 */
	public boolean isFactoryForType(Object object) {
		if (object == modelPackage) {
			return true;
		}
		if (object instanceof EObject) {
			return ((EObject)object).eClass().getEPackage() == modelPackage;
		}
		return false;
	}

	/**
	 * The switch that delegates to the <code>createXXX</code> methods.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected RobotSwitch modelSwitch =
		new RobotSwitch() {
			public Object caseOrderRobot(OrderRobot object) {
				return createOrderRobotAdapter();
			}
			public Object casemove(move object) {
				return createmoveAdapter();
			}
			public Object casebip(bip object) {
				return createbipAdapter();
			}
			public Object caseturn(turn object) {
				return createturnAdapter();
			}
			public Object casestopEngine(stopEngine object) {
				return createstopEngineAdapter();
			}
			public Object casedisplay(display object) {
				return createdisplayAdapter();
			}
			public Object caseturnAngle(turnAngle object) {
				return createturnAngleAdapter();
			}
			public Object caseobstacle(obstacle object) {
				return createobstacleAdapter();
			}
			public Object casehasTurned(hasTurned object) {
				return createhasTurnedAdapter();
			}
			public Object defaultCase(EObject object) {
				return createEObjectAdapter();
			}
		};

	/**
	 * Creates an adapter for the <code>target</code>.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param target the object to adapt.
	 * @return the adapter for the <code>target</code>.
	 * @generated
	 */
	public Adapter createAdapter(Notifier target) {
		return (Adapter)modelSwitch.doSwitch((EObject)target);
	}


	/**
	 * Creates a new adapter for an object of class '{@link Legolang.Robot.OrderRobot <em>Order Robot</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see Legolang.Robot.OrderRobot
	 * @generated
	 */
	public Adapter createOrderRobotAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link Legolang.Robot.move <em>move</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see Legolang.Robot.move
	 * @generated
	 */
	public Adapter createmoveAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link Legolang.Robot.bip <em>bip</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see Legolang.Robot.bip
	 * @generated
	 */
	public Adapter createbipAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link Legolang.Robot.turn <em>turn</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see Legolang.Robot.turn
	 * @generated
	 */
	public Adapter createturnAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link Legolang.Robot.stopEngine <em>stop Engine</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see Legolang.Robot.stopEngine
	 * @generated
	 */
	public Adapter createstopEngineAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link Legolang.Robot.display <em>display</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see Legolang.Robot.display
	 * @generated
	 */
	public Adapter createdisplayAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link Legolang.Robot.turnAngle <em>turn Angle</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see Legolang.Robot.turnAngle
	 * @generated
	 */
	public Adapter createturnAngleAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link Legolang.Robot.obstacle <em>obstacle</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see Legolang.Robot.obstacle
	 * @generated
	 */
	public Adapter createobstacleAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link Legolang.Robot.hasTurned <em>has Turned</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see Legolang.Robot.hasTurned
	 * @generated
	 */
	public Adapter createhasTurnedAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for the default case.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @generated
	 */
	public Adapter createEObjectAdapter() {
		return null;
	}

} //RobotAdapterFactory
