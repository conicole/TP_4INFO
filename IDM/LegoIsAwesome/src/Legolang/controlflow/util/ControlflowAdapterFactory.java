/**
 * <copyright>
 * </copyright>
 *
 * $Id$
 */
package Legolang.controlflow.util;

import Legolang.controlflow.*;

import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;

import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * The <b>Adapter Factory</b> for the model.
 * It provides an adapter <code>createXXX</code> method for each class of the model.
 * <!-- end-user-doc -->
 * @see Legolang.controlflow.ControlflowPackage
 * @generated
 */
public class ControlflowAdapterFactory extends AdapterFactoryImpl {
	/**
	 * The cached model package.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected static ControlflowPackage modelPackage;

	/**
	 * Creates an instance of the adapter factory.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public ControlflowAdapterFactory() {
		if (modelPackage == null) {
			modelPackage = ControlflowPackage.eINSTANCE;
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
	protected ControlflowSwitch modelSwitch =
		new ControlflowSwitch() {
			public Object casewhile(while object) {
				return createwhileAdapter();
			}
			public Object caseif(if object) {
				return createifAdapter();
			}
			public Object caseExpr(Expr object) {
				return createExprAdapter();
			}
			public Object caseoperator(operator object) {
				return createoperatorAdapter();
			}
			public Object caseopUnaire(opUnaire object) {
				return createopUnaireAdapter();
			}
			public Object caseopBinaire(opBinaire object) {
				return createopBinaireAdapter();
			}
			public Object casenot(not object) {
				return createnotAdapter();
			}
			public Object caseand(and object) {
				return createandAdapter();
			}
			public Object caseExprBool(ExprBool object) {
				return createExprBoolAdapter();
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
	 * Creates a new adapter for an object of class '{@link Legolang.controlflow.while <em>while</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see Legolang.controlflow.while
	 * @generated
	 */
	public Adapter createwhileAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link Legolang.controlflow.if <em>if</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see Legolang.controlflow.if
	 * @generated
	 */
	public Adapter createifAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link Legolang.controlflow.Expr <em>Expr</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see Legolang.controlflow.Expr
	 * @generated
	 */
	public Adapter createExprAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link Legolang.controlflow.operator <em>operator</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see Legolang.controlflow.operator
	 * @generated
	 */
	public Adapter createoperatorAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link Legolang.controlflow.opUnaire <em>op Unaire</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see Legolang.controlflow.opUnaire
	 * @generated
	 */
	public Adapter createopUnaireAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link Legolang.controlflow.opBinaire <em>op Binaire</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see Legolang.controlflow.opBinaire
	 * @generated
	 */
	public Adapter createopBinaireAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link Legolang.controlflow.not <em>not</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see Legolang.controlflow.not
	 * @generated
	 */
	public Adapter createnotAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link Legolang.controlflow.and <em>and</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see Legolang.controlflow.and
	 * @generated
	 */
	public Adapter createandAdapter() {
		return null;
	}

	/**
	 * Creates a new adapter for an object of class '{@link Legolang.controlflow.ExprBool <em>Expr Bool</em>}'.
	 * <!-- begin-user-doc -->
	 * This default implementation returns null so that we can easily ignore cases;
	 * it's useful to ignore a case when inheritance will catch all the cases anyway.
	 * <!-- end-user-doc -->
	 * @return the new adapter.
	 * @see Legolang.controlflow.ExprBool
	 * @generated
	 */
	public Adapter createExprBoolAdapter() {
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

} //ControlflowAdapterFactory
