/**
 */
package Legolang.impl;

import Legolang.EClass0;
import Legolang.LegolangFactory;
import Legolang.LegolangPackage;

import Legolang.Robot.RobotPackage;

import Legolang.Robot.impl.RobotPackageImpl;

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
public class LegolangPackageImpl extends EPackageImpl implements LegolangPackage {
	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private EClass eClass0EClass = null;

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
	 * @see Legolang.LegolangPackage#eNS_URI
	 * @see #init()
	 * @generated
	 */
	private LegolangPackageImpl() {
		super(eNS_URI, LegolangFactory.eINSTANCE);
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
	 * <p>This method is used to initialize {@link LegolangPackage#eINSTANCE} when that field is accessed.
	 * Clients should not invoke it directly. Instead, they should simply access that field to obtain the package.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #eNS_URI
	 * @see #createPackageContents()
	 * @see #initializePackageContents()
	 * @generated
	 */
	public static LegolangPackage init() {
		if (isInited) return (LegolangPackage)EPackage.Registry.INSTANCE.getEPackage(LegolangPackage.eNS_URI);

		// Obtain or create and register package
		LegolangPackageImpl theLegolangPackage = (LegolangPackageImpl)(EPackage.Registry.INSTANCE.get(eNS_URI) instanceof LegolangPackageImpl ? EPackage.Registry.INSTANCE.get(eNS_URI) : new LegolangPackageImpl());

		isInited = true;

		// Obtain or create and register interdependencies
		RobotPackageImpl theRobotPackage = (RobotPackageImpl)(EPackage.Registry.INSTANCE.getEPackage(RobotPackage.eNS_URI) instanceof RobotPackageImpl ? EPackage.Registry.INSTANCE.getEPackage(RobotPackage.eNS_URI) : RobotPackage.eINSTANCE);
		ControlflowPackageImpl theControlflowPackage = (ControlflowPackageImpl)(EPackage.Registry.INSTANCE.getEPackage(ControlflowPackage.eNS_URI) instanceof ControlflowPackageImpl ? EPackage.Registry.INSTANCE.getEPackage(ControlflowPackage.eNS_URI) : ControlflowPackage.eINSTANCE);

		// Create package meta-data objects
		theLegolangPackage.createPackageContents();
		theRobotPackage.createPackageContents();
		theControlflowPackage.createPackageContents();

		// Initialize created meta-data
		theLegolangPackage.initializePackageContents();
		theRobotPackage.initializePackageContents();
		theControlflowPackage.initializePackageContents();

		// Mark meta-data to indicate it can't be changed
		theLegolangPackage.freeze();

  
		// Update the registry and return the package
		EPackage.Registry.INSTANCE.put(LegolangPackage.eNS_URI, theLegolangPackage);
		return theLegolangPackage;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EClass getEClass0() {
		return eClass0EClass;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public LegolangFactory getLegolangFactory() {
		return (LegolangFactory)getEFactoryInstance();
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
		eClass0EClass = createEClass(ECLASS0);
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

		// Obtain other dependent packages
		RobotPackage theRobotPackage = (RobotPackage)EPackage.Registry.INSTANCE.getEPackage(RobotPackage.eNS_URI);
		ControlflowPackage theControlflowPackage = (ControlflowPackage)EPackage.Registry.INSTANCE.getEPackage(ControlflowPackage.eNS_URI);

		// Add subpackages
		getESubpackages().add(theRobotPackage);
		getESubpackages().add(theControlflowPackage);

		// Add supertypes to classes

		// Initialize classes and features; add operations and parameters
		initEClass(eClass0EClass, EClass0.class, "EClass0", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);

		// Create resource
		createResource(eNS_URI);
	}

} //LegolangPackageImpl
