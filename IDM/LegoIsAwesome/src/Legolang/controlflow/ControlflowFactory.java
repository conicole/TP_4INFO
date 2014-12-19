/**
 * <copyright>
 * </copyright>
 *
 * $Id$
 */
package Legolang.controlflow;

import org.eclipse.emf.ecore.EFactory;

/**
 * <!-- begin-user-doc -->
 * The <b>Factory</b> for the model.
 * It provides a create method for each non-abstract class of the model.
 * <!-- end-user-doc -->
 * @see Legolang.controlflow.ControlflowPackage
 * @generated
 */
public interface ControlflowFactory extends EFactory {
	/**
	 * The singleton instance of the factory.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	ControlflowFactory eINSTANCE = Legolang.controlflow.impl.ControlflowFactoryImpl.init();

	/**
	 * Returns a new object of class '<em>while</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>while</em>'.
	 * @generated
	 */
	while createwhile();

	/**
	 * Returns a new object of class '<em>if</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>if</em>'.
	 * @generated
	 */
	if createif();

	/**
	 * Returns a new object of class '<em>Expr</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>Expr</em>'.
	 * @generated
	 */
	Expr createExpr();

	/**
	 * Returns a new object of class '<em>operator</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>operator</em>'.
	 * @generated
	 */
	operator createoperator();

	/**
	 * Returns a new object of class '<em>op Unaire</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>op Unaire</em>'.
	 * @generated
	 */
	opUnaire createopUnaire();

	/**
	 * Returns a new object of class '<em>op Binaire</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>op Binaire</em>'.
	 * @generated
	 */
	opBinaire createopBinaire();

	/**
	 * Returns a new object of class '<em>not</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>not</em>'.
	 * @generated
	 */
	not createnot();

	/**
	 * Returns a new object of class '<em>and</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>and</em>'.
	 * @generated
	 */
	and createand();

	/**
	 * Returns a new object of class '<em>Expr Bool</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>Expr Bool</em>'.
	 * @generated
	 */
	ExprBool createExprBool();

	/**
	 * Returns the package supported by this factory.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the package supported by this factory.
	 * @generated
	 */
	ControlflowPackage getControlflowPackage();

} //ControlflowFactory