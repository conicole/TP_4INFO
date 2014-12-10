/**
 * <copyright>
 * </copyright>
 *
 * $Id$
 */
package Legolang.Robot.impl;

import Legolang.Robot.OrderRobot;
import Legolang.Robot.RobotFactory;
import Legolang.Robot.RobotPackage;
import Legolang.Robot.bip;
import Legolang.Robot.display;
import Legolang.Robot.hasTurned;
import Legolang.Robot.move;
import Legolang.Robot.obstacle;
import Legolang.Robot.stopEngine;
import Legolang.Robot.turn;
import Legolang.Robot.turnAngle;

import Legolang.controlflow.ControlflowPackage;

import Legolang.controlflow.impl.ControlflowPackageImpl;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;

import org.eclipse.emf.ecore.impl.EPackageImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model <b>Package</b>.
 * <!-- end-user-doc -->
 * @generated
 */
public class RobotPackageImpl extends EPackageImpl implements RobotPackage {
	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private EClass orderRobotEClass = null;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private EClass moveEClass = null;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private EClass bipEClass = null;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private EClass turnEClass = null;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private EClass stopEngineEClass = null;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private EClass displayEClass = null;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private EClass turnAngleEClass = null;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private EClass obstacleEClass = null;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private EClass hasTurnedEClass = null;

	/**
	 * Creates an instance of the model <b>Package</b>, registered with
	 * {@link org.eclipse.emf.ecore.EPackage.Registry EPackage.Registry} by the package
	 * package URI value.
	 * <p>Note: the correct way to create the package is via the static
	 * factory method {@link #init init()}, which also performs
	 * initialization of the package, or returns the registered package,
	 * if one already exists.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see org.eclipse.emf.ecore.EPackage.Registry
	 * @see Legolang.Robot.RobotPackage#eNS_URI
	 * @see #init()
	 * @generated
	 */
	private RobotPackageImpl() {
		super(eNS_URI, RobotFactory.eINSTANCE);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private static boolean isInited = false;

	/**
	 * Creates, registers, and initializes the <b>Package</b> for this model, and for any others upon which it depends.
	 * 
	 * <p>This method is used to initialize {@link RobotPackage#eINSTANCE} when that field is accessed.
	 * Clients should not invoke it directly. Instead, they should simply access that field to obtain the package.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #eNS_URI
	 * @see #createPackageContents()
	 * @see #initializePackageContents()
	 * @generated
	 */
	public static RobotPackage init() {
		if (isInited) return (RobotPackage)EPackage.Registry.INSTANCE.getEPackage(RobotPackage.eNS_URI);

		// Obtain or create and register package
		RobotPackageImpl theRobotPackage = (RobotPackageImpl)(EPackage.Registry.INSTANCE.get(eNS_URI) instanceof RobotPackageImpl ? EPackage.Registry.INSTANCE.get(eNS_URI) : new RobotPackageImpl());

		isInited = true;

		// Obtain or create and register interdependencies
		ControlflowPackageImpl theControlflowPackage = (ControlflowPackageImpl)(EPackage.Registry.INSTANCE.getEPackage(ControlflowPackage.eNS_URI) instanceof ControlflowPackageImpl ? EPackage.Registry.INSTANCE.getEPackage(ControlflowPackage.eNS_URI) : ControlflowPackage.eINSTANCE);

		// Create package meta-data objects
		theRobotPackage.createPackageContents();
		theControlflowPackage.createPackageContents();

		// Initialize created meta-data
		theRobotPackage.initializePackageContents();
		theControlflowPackage.initializePackageContents();

		// Mark meta-data to indicate it can't be changed
		theRobotPackage.freeze();

  
		// Update the registry and return the package
		EPackage.Registry.INSTANCE.put(RobotPackage.eNS_URI, theRobotPackage);
		return theRobotPackage;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EClass getOrderRobot() {
		return orderRobotEClass;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EClass getmove() {
		return moveEClass;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EClass getbip() {
		return bipEClass;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EClass getturn() {
		return turnEClass;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EClass getstopEngine() {
		return stopEngineEClass;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EClass getdisplay() {
		return displayEClass;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EClass getturnAngle() {
		return turnAngleEClass;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EClass getobstacle() {
		return obstacleEClass;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EClass gethasTurned() {
		return hasTurnedEClass;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public RobotFactory getRobotFactory() {
		return (RobotFactory)getEFactoryInstance();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private boolean isCreated = false;

	/**
	 * Creates the meta-model objects for the package.  This method is
	 * guarded to have no affect on any invocation but its first.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public void createPackageContents() {
		if (isCreated) return;
		isCreated = true;

		// Create classes and their features
		orderRobotEClass = createEClass(ORDER_ROBOT);

		moveEClass = createEClass(MOVE);

		bipEClass = createEClass(BIP);

		turnEClass = createEClass(TURN);

		stopEngineEClass = createEClass(STOP_ENGINE);

		displayEClass = createEClass(DISPLAY);

		turnAngleEClass = createEClass(TURN_ANGLE);

		obstacleEClass = createEClass(OBSTACLE);

		hasTurnedEClass = createEClass(HAS_TURNED);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private boolean isInitialized = false;

	/**
	 * Complete the initialization of the package and its meta-model.  This
	 * method is guarded to have no affect on any invocation but its first.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public void initializePackageContents() {
		if (isInitialized) return;
		isInitialized = true;

		// Initialize package
		setName(eNAME);
		setNsPrefix(eNS_PREFIX);
		setNsURI(eNS_URI);


		// Add supertypes to classes
		moveEClass.getESuperTypes().add(this.getOrderRobot());
		bipEClass.getESuperTypes().add(this.getOrderRobot());
		turnEClass.getESuperTypes().add(this.getOrderRobot());
		stopEngineEClass.getESuperTypes().add(this.getOrderRobot());
		displayEClass.getESuperTypes().add(this.getOrderRobot());
		turnAngleEClass.getESuperTypes().add(this.getOrderRobot());
		obstacleEClass.getESuperTypes().add(this.getOrderRobot());
		hasTurnedEClass.getESuperTypes().add(this.getOrderRobot());

		// Initialize classes and features; add operations and parameters
		initEClass(orderRobotEClass, OrderRobot.class, "OrderRobot", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);

		initEClass(moveEClass, move.class, "move", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);

		initEClass(bipEClass, bip.class, "bip", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);

		initEClass(turnEClass, turn.class, "turn", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);

		initEClass(stopEngineEClass, stopEngine.class, "stopEngine", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);

		initEClass(displayEClass, display.class, "display", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);

		initEClass(turnAngleEClass, turnAngle.class, "turnAngle", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);

		initEClass(obstacleEClass, obstacle.class, "obstacle", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);

		initEClass(hasTurnedEClass, hasTurned.class, "hasTurned", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);

		// Create resource
		createResource(eNS_URI);
	}

} //RobotPackageImpl
