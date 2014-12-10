/**
 * <copyright>
 * </copyright>
 *
 * $Id$
 */
package Legolang.controlflow.impl;

import Legolang.controlflow.*;

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
public class ControlflowFactoryImpl extends EFactoryImpl implements ControlflowFactory {
	/**
	 * Creates the default factory implementation.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public static ControlflowFactory init() {
		try {
			ControlflowFactory theControlflowFactory = (ControlflowFactory)EPackage.Registry.INSTANCE.getEFactory("Lego-lg.lego_controlflow"); 
			if (theControlflowFactory != null) {
				return theControlflowFactory;
			}
		} catch (Exception exception) {
			EcorePlugin.INSTANCE.log(exception);
		}
		return new ControlflowFactoryImpl();
	}

	/**
	 * Creates an instance of the factory.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public ControlflowFactoryImpl() {
		super();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EObject create(EClass eClass) {
		switch (eClass.getClassifierID()) {
			case ControlflowPackage.WHILE: return createwhile();
			case ControlflowPackage.IF: return createif();
			case ControlflowPackage.EXPR: return createExpr();
			case ControlflowPackage.OPERATOR: return createoperator();
			case ControlflowPackage.OP_UNAIRE: return createopUnaire();
			case ControlflowPackage.OP_BINAIRE: return createopBinaire();
			case ControlflowPackage.NOT: return createnot();
			case ControlflowPackage.AND: return createand();
			case ControlflowPackage.EXPR_BOOL: return createExprBool();
			default:
				throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
		}
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public while createwhile() {
		whileImpl while_ = new whileImpl();
		return while_;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public if createif() {
		ifImpl if_ = new ifImpl();
		return if_;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public Expr createExpr() {
		ExprImpl expr = new ExprImpl();
		return expr;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public operator createoperator() {
		operatorImpl operator = new operatorImpl();
		return operator;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public opUnaire createopUnaire() {
		opUnaireImpl opUnaire = new opUnaireImpl();
		return opUnaire;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public opBinaire createopBinaire() {
		opBinaireImpl opBinaire = new opBinaireImpl();
		return opBinaire;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public not createnot() {
		notImpl not = new notImpl();
		return not;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public and createand() {
		andImpl and = new andImpl();
		return and;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public ExprBool createExprBool() {
		ExprBoolImpl exprBool = new ExprBoolImpl();
		return exprBool;
	}


	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public ControlflowPackage getControlflowPackage() {
		return (ControlflowPackage)getEPackage();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @deprecated
	 * @generated
	 */
	public static ControlflowPackage getPackage() {
		return ControlflowPackage.eINSTANCE;
	}

} //ControlflowFactoryImpl
