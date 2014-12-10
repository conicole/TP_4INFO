/**
 */
package Legolang;

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
 * @see Legolang.LegolangFactory
 * @model kind="package"
 * @generated
 */
public interface LegolangPackage extends EPackage {
	/**
	 * The package name.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	String eNAME = "Legolang";

	/**
	 * The package namespace URI.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	String eNS_URI = "Lego-lg";

	/**
	 * The package namespace name.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	String eNS_PREFIX = "Lego";

	/**
	 * The singleton instance of the package.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	LegolangPackage eINSTANCE = Legolang.impl.LegolangPackageImpl.init();

	/**
	 * The meta object id for the '{@link Legolang.impl.EClass0Impl <em>EClass0</em>}' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see Legolang.impl.EClass0Impl
	 * @see Legolang.impl.LegolangPackageImpl#getEClass0()
	 * @generated
	 */
	int ECLASS0 = 0;

	/**
	 * The number of structural features of the '<em>EClass0</em>' class.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 * @ordered
	 */
	int ECLASS0_FEATURE_COUNT = 0;


	/**
	 * Returns the meta object for class '{@link Legolang.EClass0 <em>EClass0</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the meta object for class '<em>EClass0</em>'.
	 * @see Legolang.EClass0
	 * @generated
	 */
	EClass getEClass0();

	/**
	 * Returns the factory that creates the instances of the model.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the factory that creates the instances of the model.
	 * @generated
	 */
	LegolangFactory getLegolangFactory();

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
		 * The meta object literal for the '{@link Legolang.impl.EClass0Impl <em>EClass0</em>}' class.
		 * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
		 * @see Legolang.impl.EClass0Impl
		 * @see Legolang.impl.LegolangPackageImpl#getEClass0()
		 * @generated
		 */
		EClass ECLASS0 = eINSTANCE.getEClass0();

	}

} //LegolangPackage
