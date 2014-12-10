/**
 * <copyright>
 * </copyright>
 *
 * $Id$
 */
package Legolang.controlflow.util;

import Legolang.controlflow.*;

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
 * @see Legolang.controlflow.ControlflowPackage
 * @generated
 */
public class ControlflowSwitch {
	/**
	 * The cached model package
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected static ControlflowPackage modelPackage;

	/**
	 * Creates an instance of the switch.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public ControlflowSwitch() {
		if (modelPackage == null) {
			modelPackage = ControlflowPackage.eINSTANCE;
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
			case ControlflowPackage.WHILE: {
				while while_ = (while)theEObject;
				Object result = casewhile(while_);
				if (result == null) result = caseExpr(while_);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case ControlflowPackage.IF: {
				if if_ = (if)theEObject;
				Object result = caseif(if_);
				if (result == null) result = caseExpr(if_);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case ControlflowPackage.EXPR: {
				Expr expr = (Expr)theEObject;
				Object result = caseExpr(expr);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case ControlflowPackage.OPERATOR: {
				operator operator = (operator)theEObject;
				Object result = caseoperator(operator);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case ControlflowPackage.OP_UNAIRE: {
				opUnaire opUnaire = (opUnaire)theEObject;
				Object result = caseopUnaire(opUnaire);
				if (result == null) result = caseoperator(opUnaire);
				if (result == null) result = caseExprBool(opUnaire);
				if (result == null) result = caseExpr(opUnaire);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case ControlflowPackage.OP_BINAIRE: {
				opBinaire opBinaire = (opBinaire)theEObject;
				Object result = caseopBinaire(opBinaire);
				if (result == null) result = caseoperator(opBinaire);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case ControlflowPackage.NOT: {
				not not = (not)theEObject;
				Object result = casenot(not);
				if (result == null) result = caseopUnaire(not);
				if (result == null) result = caseoperator(not);
				if (result == null) result = caseExprBool(not);
				if (result == null) result = caseExpr(not);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case ControlflowPackage.AND: {
				and and = (and)theEObject;
				Object result = caseand(and);
				if (result == null) result = caseopBinaire(and);
				if (result == null) result = caseoperator(and);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			case ControlflowPackage.EXPR_BOOL: {
				ExprBool exprBool = (ExprBool)theEObject;
				Object result = caseExprBool(exprBool);
				if (result == null) result = caseExpr(exprBool);
				if (result == null) result = defaultCase(theEObject);
				return result;
			}
			default: return defaultCase(theEObject);
		}
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>while</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>while</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public Object casewhile(while object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>if</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>if</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public Object caseif(if object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>Expr</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>Expr</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public Object caseExpr(Expr object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>operator</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>operator</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public Object caseoperator(operator object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>op Unaire</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>op Unaire</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public Object caseopUnaire(opUnaire object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>op Binaire</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>op Binaire</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public Object caseopBinaire(opBinaire object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>not</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>not</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public Object casenot(not object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>and</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>and</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public Object caseand(and object) {
		return null;
	}

	/**
	 * Returns the result of interpreting the object as an instance of '<em>Expr Bool</em>'.
	 * <!-- begin-user-doc -->
	 * This implementation returns null;
	 * returning a non-null result will terminate the switch.
	 * <!-- end-user-doc -->
	 * @param object the target of the switch.
	 * @return the result of interpreting the object as an instance of '<em>Expr Bool</em>'.
	 * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
	 * @generated
	 */
	public Object caseExprBool(ExprBool object) {
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

} //ControlflowSwitch
