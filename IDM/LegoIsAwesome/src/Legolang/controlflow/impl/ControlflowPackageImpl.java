/**
 * <copyright>
 * </copyright>
 *
 * $Id$
 */
package Legolang.controlflow.impl;

import Legolang.Robot.RobotPackage;

import Legolang.Robot.impl.RobotPackageImpl;

import Legolang.controlflow.ControlflowFactory;
import Legolang.controlflow.ControlflowPackage;
import Legolang.controlflow.Expr;
import Legolang.controlflow.ExprBool;
import Legolang.controlflow.and;
import Legolang.controlflow.if;
import Legolang.controlflow.not;
import Legolang.controlflow.opBinaire;
import Legolang.controlflow.opUnaire;
import Legolang.controlflow.operator;
import Legolang.controlflow.while;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

import org.eclipse.emf.ecore.impl.EPackageImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model <b>Package</b>.
 * <!-- end-user-doc -->
 * @generated
 */
public class ControlflowPackageImpl extends EPackageImpl implements ControlflowPackage {
	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private EClass whileEClass = null;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private EClass ifEClass = null;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private EClass exprEClass = null;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private EClass operatorEClass = null;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private EClass opUnaireEClass = null;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private EClass opBinaireEClass = null;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private EClass notEClass = null;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private EClass andEClass = null;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	private EClass exprBoolEClass = null;

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
	 * @see Legolang.controlflow.ControlflowPackage#eNS_URI
	 * @see #init()
	 * @generated
	 */
	private ControlflowPackageImpl() {
		super(eNS_URI, ControlflowFactory.eINSTANCE);
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
	 * <p>This method is used to initialize {@link ControlflowPackage#eINSTANCE} when that field is accessed.
	 * Clients should not invoke it directly. Instead, they should simply access that field to obtain the package.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #eNS_URI
	 * @see #createPackageContents()
	 * @see #initializePackageContents()
	 * @generated
	 */
	public static ControlflowPackage init() {
		if (isInited) return (ControlflowPackage)EPackage.Registry.INSTANCE.getEPackage(ControlflowPackage.eNS_URI);

		// Obtain or create and register package
		ControlflowPackageImpl theControlflowPackage = (ControlflowPackageImpl)(EPackage.Registry.INSTANCE.get(eNS_URI) instanceof ControlflowPackageImpl ? EPackage.Registry.INSTANCE.get(eNS_URI) : new ControlflowPackageImpl());

		isInited = true;

		// Obtain or create and register interdependencies
		RobotPackageImpl theRobotPackage = (RobotPackageImpl)(EPackage.Registry.INSTANCE.getEPackage(RobotPackage.eNS_URI) instanceof RobotPackageImpl ? EPackage.Registry.INSTANCE.getEPackage(RobotPackage.eNS_URI) : RobotPackage.eINSTANCE);

		// Create package meta-data objects
		theControlflowPackage.createPackageContents();
		theRobotPackage.createPackageContents();

		// Initialize created meta-data
		theControlflowPackage.initializePackageContents();
		theRobotPackage.initializePackageContents();

		// Mark meta-data to indicate it can't be changed
		theControlflowPackage.freeze();

  
		// Update the registry and return the package
		EPackage.Registry.INSTANCE.put(ControlflowPackage.eNS_URI, theControlflowPackage);
		return theControlflowPackage;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EClass getwhile() {
		return whileEClass;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EClass getif() {
		return ifEClass;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EClass getExpr() {
		return exprEClass;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EClass getoperator() {
		return operatorEClass;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EClass getopUnaire() {
		return opUnaireEClass;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EClass getopBinaire() {
		return opBinaireEClass;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EReference getopBinaire_EReference0() {
		return (EReference)opBinaireEClass.getEStructuralFeatures().get(0);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EReference getopBinaire_LeftSon() {
		return (EReference)opBinaireEClass.getEStructuralFeatures().get(1);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EReference getopBinaire_RightSon() {
		return (EReference)opBinaireEClass.getEStructuralFeatures().get(2);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EClass getnot() {
		return notEClass;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EClass getand() {
		return andEClass;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EClass getExprBool() {
		return exprBoolEClass;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public ControlflowFactory getControlflowFactory() {
		return (ControlflowFactory)getEFactoryInstance();
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
		whileEClass = createEClass(WHILE);

		ifEClass = createEClass(IF);

		exprEClass = createEClass(EXPR);

		operatorEClass = createEClass(OPERATOR);

		opUnaireEClass = createEClass(OP_UNAIRE);

		opBinaireEClass = createEClass(OP_BINAIRE);
		createEReference(opBinaireEClass, OP_BINAIRE__EREFERENCE0);
		createEReference(opBinaireEClass, OP_BINAIRE__LEFT_SON);
		createEReference(opBinaireEClass, OP_BINAIRE__RIGHT_SON);

		notEClass = createEClass(NOT);

		andEClass = createEClass(AND);

		exprBoolEClass = createEClass(EXPR_BOOL);
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
		whileEClass.getESuperTypes().add(this.getExpr());
		ifEClass.getESuperTypes().add(this.getExpr());
		opUnaireEClass.getESuperTypes().add(this.getoperator());
		opUnaireEClass.getESuperTypes().add(this.getExprBool());
		opBinaireEClass.getESuperTypes().add(this.getoperator());
		notEClass.getESuperTypes().add(this.getopUnaire());
		andEClass.getESuperTypes().add(this.getopBinaire());
		exprBoolEClass.getESuperTypes().add(this.getExpr());

		// Initialize classes and features; add operations and parameters
		initEClass(whileEClass, while.class, "while", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);

		initEClass(ifEClass, if.class, "if", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);

		initEClass(exprEClass, Expr.class, "Expr", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);

		initEClass(operatorEClass, operator.class, "operator", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);

		initEClass(opUnaireEClass, opUnaire.class, "opUnaire", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);

		initEClass(opBinaireEClass, opBinaire.class, "opBinaire", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
		initEReference(getopBinaire_EReference0(), this.getopBinaire(), null, "EReference0", null, 0, 1, opBinaire.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_COMPOSITE, IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
		initEReference(getopBinaire_LeftSon(), this.getExprBool(), null, "LeftSon", null, 1, 1, opBinaire.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_COMPOSITE, IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
		initEReference(getopBinaire_RightSon(), this.getExprBool(), null, "RightSon", null, 1, 1, opBinaire.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_COMPOSITE, IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

		initEClass(notEClass, not.class, "not", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);

		initEClass(andEClass, and.class, "and", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);

		initEClass(exprBoolEClass, ExprBool.class, "ExprBool", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);

		// Create resource
		createResource(eNS_URI);
	}

} //ControlflowPackageImpl
