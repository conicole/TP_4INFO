/**
 */
package Legolang;

import org.eclipse.emf.ecore.EFactory;

/**
 * <!-- begin-user-doc -->
 * The <b>Factory</b> for the model.
 * It provides a create method for each non-abstract class of the model.
 * <!-- end-user-doc -->
 * @see Legolang.LegolangPackage
 * @generated
 */
public interface LegolangFactory extends EFactory {
	/**
	 * The singleton instance of the factory.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	LegolangFactory eINSTANCE = Legolang.impl.LegolangFactoryImpl.init();

	/**
	 * Returns a new object of class '<em>EClass0</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>EClass0</em>'.
	 * @generated
	 */
	EClass0 createEClass0();

	/**
	 * Returns the package supported by this factory.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the package supported by this factory.
	 * @generated
	 */
	LegolangPackage getLegolangPackage();

} //LegolangFactory
