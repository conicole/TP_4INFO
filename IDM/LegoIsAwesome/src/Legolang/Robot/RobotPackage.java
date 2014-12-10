/**
 * <copyright>
 * </copyright>
 *
 * $Id$
 */
package Legolang.Robot;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;

/**
 * <!-- begin-user-doc -->
 * The <b>Package</b> for the model.
 * It contains accessors for the meta objects to represent
 * <ul>
 *   <li>each class,</li>
 *   <li>each feature of each class,</li>
 *   <li>each enum,</li>
 *   <li>and each data type</li>
 * </ul>
 * <!-- end-user-doc -->
 * @see Legolang.Robot.RobotFactory
 * @model kind="package"
 * @generated
 */
public interface RobotPackage extends EPackage {
	/**
	 * The package name.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	String eNAME = "Robot";

	/**
	 * The package namespace URI.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	String eNS_URI = "Lego-lg.legorb";

	/**
	 * The package namespace name.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	String eNS_PREFIX = "lego_rb";

	/**
	 * The singleton instance of the package.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	RobotPackage eINSTANCE = Legolang.Robot.impl.RobotPackageImpl.init();

	/**
	 * The meta object id for the '{@link Legolang.Robot.impl.OrderRobotImpl <em>Order Robot</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see Legolang.Robot.impl.OrderRobotImpl
	 * @see Legolang.Robot.impl.RobotPackageImpl#getOrderRobot()
	 * @generated
	 */
	int ORDER_ROBOT = 0;

	/**
	 * The number of structural features of the '<em>Order Robot</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int ORDER_ROBOT_FEATURE_COUNT = 0;

	/**
	 * The meta object id for the '{@link Legolang.Robot.impl.moveImpl <em>move</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see Legolang.Robot.impl.moveImpl
	 * @see Legolang.Robot.impl.RobotPackageImpl#getmove()
	 * @generated
	 */
	int MOVE = 1;

	/**
	 * The number of structural features of the '<em>move</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int MOVE_FEATURE_COUNT = ORDER_ROBOT_FEATURE_COUNT + 0;

	/**
	 * The meta object id for the '{@link Legolang.Robot.impl.bipImpl <em>bip</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see Legolang.Robot.impl.bipImpl
	 * @see Legolang.Robot.impl.RobotPackageImpl#getbip()
	 * @generated
	 */
	int BIP = 2;

	/**
	 * The number of structural features of the '<em>bip</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int BIP_FEATURE_COUNT = ORDER_ROBOT_FEATURE_COUNT + 0;

	/**
	 * The meta object id for the '{@link Legolang.Robot.impl.turnImpl <em>turn</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see Legolang.Robot.impl.turnImpl
	 * @see Legolang.Robot.impl.RobotPackageImpl#getturn()
	 * @generated
	 */
	int TURN = 3;

	/**
	 * The number of structural features of the '<em>turn</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int TURN_FEATURE_COUNT = ORDER_ROBOT_FEATURE_COUNT + 0;

	/**
	 * The meta object id for the '{@link Legolang.Robot.impl.stopEngineImpl <em>stop Engine</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see Legolang.Robot.impl.stopEngineImpl
	 * @see Legolang.Robot.impl.RobotPackageImpl#getstopEngine()
	 * @generated
	 */
	int STOP_ENGINE = 4;

	/**
	 * The number of structural features of the '<em>stop Engine</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int STOP_ENGINE_FEATURE_COUNT = ORDER_ROBOT_FEATURE_COUNT + 0;

	/**
	 * The meta object id for the '{@link Legolang.Robot.impl.displayImpl <em>display</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see Legolang.Robot.impl.displayImpl
	 * @see Legolang.Robot.impl.RobotPackageImpl#getdisplay()
	 * @generated
	 */
	int DISPLAY = 5;

	/**
	 * The number of structural features of the '<em>display</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int DISPLAY_FEATURE_COUNT = ORDER_ROBOT_FEATURE_COUNT + 0;

	/**
	 * The meta object id for the '{@link Legolang.Robot.impl.turnAngleImpl <em>turn Angle</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see Legolang.Robot.impl.turnAngleImpl
	 * @see Legolang.Robot.impl.RobotPackageImpl#getturnAngle()
	 * @generated
	 */
	int TURN_ANGLE = 6;

	/**
	 * The number of structural features of the '<em>turn Angle</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int TURN_ANGLE_FEATURE_COUNT = ORDER_ROBOT_FEATURE_COUNT + 0;

	/**
	 * The meta object id for the '{@link Legolang.Robot.impl.obstacleImpl <em>obstacle</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see Legolang.Robot.impl.obstacleImpl
	 * @see Legolang.Robot.impl.RobotPackageImpl#getobstacle()
	 * @generated
	 */
	int OBSTACLE = 7;

	/**
	 * The number of structural features of the '<em>obstacle</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int OBSTACLE_FEATURE_COUNT = ORDER_ROBOT_FEATURE_COUNT + 0;

	/**
	 * The meta object id for the '{@link Legolang.Robot.impl.hasTurnedImpl <em>has Turned</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see Legolang.Robot.impl.hasTurnedImpl
	 * @see Legolang.Robot.impl.RobotPackageImpl#gethasTurned()
	 * @generated
	 */
	int HAS_TURNED = 8;

	/**
	 * The number of structural features of the '<em>has Turned</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int HAS_TURNED_FEATURE_COUNT = ORDER_ROBOT_FEATURE_COUNT + 0;


	/**
	 * Returns the meta object for class '{@link Legolang.Robot.OrderRobot <em>Order Robot</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>Order Robot</em>'.
	 * @see Legolang.Robot.OrderRobot
	 * @generated
	 */
	EClass getOrderRobot();

	/**
	 * Returns the meta object for class '{@link Legolang.Robot.move <em>move</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>move</em>'.
	 * @see Legolang.Robot.move
	 * @generated
	 */
	EClass getmove();

	/**
	 * Returns the meta object for class '{@link Legolang.Robot.bip <em>bip</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>bip</em>'.
	 * @see Legolang.Robot.bip
	 * @generated
	 */
	EClass getbip();

	/**
	 * Returns the meta object for class '{@link Legolang.Robot.turn <em>turn</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>turn</em>'.
	 * @see Legolang.Robot.turn
	 * @generated
	 */
	EClass getturn();

	/**
	 * Returns the meta object for class '{@link Legolang.Robot.stopEngine <em>stop Engine</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>stop Engine</em>'.
	 * @see Legolang.Robot.stopEngine
	 * @generated
	 */
	EClass getstopEngine();

	/**
	 * Returns the meta object for class '{@link Legolang.Robot.display <em>display</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>display</em>'.
	 * @see Legolang.Robot.display
	 * @generated
	 */
	EClass getdisplay();

	/**
	 * Returns the meta object for class '{@link Legolang.Robot.turnAngle <em>turn Angle</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>turn Angle</em>'.
	 * @see Legolang.Robot.turnAngle
	 * @generated
	 */
	EClass getturnAngle();

	/**
	 * Returns the meta object for class '{@link Legolang.Robot.obstacle <em>obstacle</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>obstacle</em>'.
	 * @see Legolang.Robot.obstacle
	 * @generated
	 */
	EClass getobstacle();

	/**
	 * Returns the meta object for class '{@link Legolang.Robot.hasTurned <em>has Turned</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>has Turned</em>'.
	 * @see Legolang.Robot.hasTurned
	 * @generated
	 */
	EClass gethasTurned();

	/**
	 * Returns the factory that creates the instances of the model.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the factory that creates the instances of the model.
	 * @generated
	 */
	RobotFactory getRobotFactory();

	/**
	 * <!-- begin-user-doc -->
	 * Defines literals for the meta objects that represent
	 * <ul>
	 *   <li>each class,</li>
	 *   <li>each feature of each class,</li>
	 *   <li>each enum,</li>
	 *   <li>and each data type</li>
	 * </ul>
	 * <!-- end-user-doc -->
	 * @generated
	 */
	interface Literals {
		/**
		 * The meta object literal for the '{@link Legolang.Robot.impl.OrderRobotImpl <em>Order Robot</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see Legolang.Robot.impl.OrderRobotImpl
		 * @see Legolang.Robot.impl.RobotPackageImpl#getOrderRobot()
		 * @generated
		 */
		EClass ORDER_ROBOT = eINSTANCE.getOrderRobot();

		/**
		 * The meta object literal for the '{@link Legolang.Robot.impl.moveImpl <em>move</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see Legolang.Robot.impl.moveImpl
		 * @see Legolang.Robot.impl.RobotPackageImpl#getmove()
		 * @generated
		 */
		EClass MOVE = eINSTANCE.getmove();

		/**
		 * The meta object literal for the '{@link Legolang.Robot.impl.bipImpl <em>bip</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see Legolang.Robot.impl.bipImpl
		 * @see Legolang.Robot.impl.RobotPackageImpl#getbip()
		 * @generated
		 */
		EClass BIP = eINSTANCE.getbip();

		/**
		 * The meta object literal for the '{@link Legolang.Robot.impl.turnImpl <em>turn</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see Legolang.Robot.impl.turnImpl
		 * @see Legolang.Robot.impl.RobotPackageImpl#getturn()
		 * @generated
		 */
		EClass TURN = eINSTANCE.getturn();

		/**
		 * The meta object literal for the '{@link Legolang.Robot.impl.stopEngineImpl <em>stop Engine</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see Legolang.Robot.impl.stopEngineImpl
		 * @see Legolang.Robot.impl.RobotPackageImpl#getstopEngine()
		 * @generated
		 */
		EClass STOP_ENGINE = eINSTANCE.getstopEngine();

		/**
		 * The meta object literal for the '{@link Legolang.Robot.impl.displayImpl <em>display</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see Legolang.Robot.impl.displayImpl
		 * @see Legolang.Robot.impl.RobotPackageImpl#getdisplay()
		 * @generated
		 */
		EClass DISPLAY = eINSTANCE.getdisplay();

		/**
		 * The meta object literal for the '{@link Legolang.Robot.impl.turnAngleImpl <em>turn Angle</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see Legolang.Robot.impl.turnAngleImpl
		 * @see Legolang.Robot.impl.RobotPackageImpl#getturnAngle()
		 * @generated
		 */
		EClass TURN_ANGLE = eINSTANCE.getturnAngle();

		/**
		 * The meta object literal for the '{@link Legolang.Robot.impl.obstacleImpl <em>obstacle</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see Legolang.Robot.impl.obstacleImpl
		 * @see Legolang.Robot.impl.RobotPackageImpl#getobstacle()
		 * @generated
		 */
		EClass OBSTACLE = eINSTANCE.getobstacle();

		/**
		 * The meta object literal for the '{@link Legolang.Robot.impl.hasTurnedImpl <em>has Turned</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see Legolang.Robot.impl.hasTurnedImpl
		 * @see Legolang.Robot.impl.RobotPackageImpl#gethasTurned()
		 * @generated
		 */
		EClass HAS_TURNED = eINSTANCE.gethasTurned();

	}

} //RobotPackage
