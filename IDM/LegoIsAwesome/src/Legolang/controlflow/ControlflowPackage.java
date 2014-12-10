/**
 */
package Legolang.controlflow;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

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
 * @see Legolang.controlflow.ControlflowFactory
 * @model kind="package"
 * @generated
 */
public interface ControlflowPackage extends EPackage {
	/**
   * The package name.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @generated
   */
	String eNAME = "controlflow";

	/**
   * The package namespace URI.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @generated
   */
	String eNS_URI = "Lego-lg.lego_controlflow";

	/**
   * The package namespace name.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @generated
   */
	String eNS_PREFIX = "legoCf";

	/**
   * The singleton instance of the package.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @generated
   */
	ControlflowPackage eINSTANCE = Legolang.controlflow.impl.ControlflowPackageImpl.init();

	/**
   * The meta object id for the '{@link Legolang.controlflow.impl.ExprImpl <em>Expr</em>}' class.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @see Legolang.controlflow.impl.ExprImpl
   * @see Legolang.controlflow.impl.ControlflowPackageImpl#getExpr()
   * @generated
   */
	int EXPR = 2;

	/**
   * The number of structural features of the '<em>Expr</em>' class.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
	int EXPR_FEATURE_COUNT = 0;

	/**
   * The meta object id for the '{@link Legolang.controlflow.impl.whileImpl <em>while</em>}' class.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @see Legolang.controlflow.impl.whileImpl
   * @see Legolang.controlflow.impl.ControlflowPackageImpl#getwhile()
   * @generated
   */
	int WHILE = 0;

	/**
   * The number of structural features of the '<em>while</em>' class.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
	int WHILE_FEATURE_COUNT = EXPR_FEATURE_COUNT + 0;

	/**
   * The meta object id for the '{@link Legolang.controlflow.impl.ifImpl <em>if</em>}' class.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @see Legolang.controlflow.impl.ifImpl
   * @see Legolang.controlflow.impl.ControlflowPackageImpl#getif()
   * @generated
   */
	int IF = 1;

	/**
   * The number of structural features of the '<em>if</em>' class.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
	int IF_FEATURE_COUNT = EXPR_FEATURE_COUNT + 0;

	/**
   * The meta object id for the '{@link Legolang.controlflow.impl.operatorImpl <em>operator</em>}' class.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @see Legolang.controlflow.impl.operatorImpl
   * @see Legolang.controlflow.impl.ControlflowPackageImpl#getoperator()
   * @generated
   */
	int OPERATOR = 3;

	/**
   * The number of structural features of the '<em>operator</em>' class.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
	int OPERATOR_FEATURE_COUNT = 0;

	/**
   * The meta object id for the '{@link Legolang.controlflow.impl.opUnaireImpl <em>op Unaire</em>}' class.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @see Legolang.controlflow.impl.opUnaireImpl
   * @see Legolang.controlflow.impl.ControlflowPackageImpl#getopUnaire()
   * @generated
   */
	int OP_UNAIRE = 4;

	/**
   * The number of structural features of the '<em>op Unaire</em>' class.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
	int OP_UNAIRE_FEATURE_COUNT = OPERATOR_FEATURE_COUNT + 0;

	/**
   * The meta object id for the '{@link Legolang.controlflow.impl.opBinaireImpl <em>op Binaire</em>}' class.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @see Legolang.controlflow.impl.opBinaireImpl
   * @see Legolang.controlflow.impl.ControlflowPackageImpl#getopBinaire()
   * @generated
   */
	int OP_BINAIRE = 5;

	/**
   * The feature id for the '<em><b>EReference0</b></em>' reference.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
	int OP_BINAIRE__EREFERENCE0 = OPERATOR_FEATURE_COUNT + 0;

	/**
   * The feature id for the '<em><b>Left Son</b></em>' reference.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
	int OP_BINAIRE__LEFT_SON = OPERATOR_FEATURE_COUNT + 1;

	/**
   * The feature id for the '<em><b>Right Son</b></em>' reference.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
	int OP_BINAIRE__RIGHT_SON = OPERATOR_FEATURE_COUNT + 2;

	/**
   * The number of structural features of the '<em>op Binaire</em>' class.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
	int OP_BINAIRE_FEATURE_COUNT = OPERATOR_FEATURE_COUNT + 3;

	/**
   * The meta object id for the '{@link Legolang.controlflow.impl.notImpl <em>not</em>}' class.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @see Legolang.controlflow.impl.notImpl
   * @see Legolang.controlflow.impl.ControlflowPackageImpl#getnot()
   * @generated
   */
	int NOT = 6;

	/**
   * The number of structural features of the '<em>not</em>' class.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
	int NOT_FEATURE_COUNT = OP_UNAIRE_FEATURE_COUNT + 0;

	/**
   * The meta object id for the '{@link Legolang.controlflow.impl.andImpl <em>and</em>}' class.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @see Legolang.controlflow.impl.andImpl
   * @see Legolang.controlflow.impl.ControlflowPackageImpl#getand()
   * @generated
   */
	int AND = 7;

	/**
   * The feature id for the '<em><b>EReference0</b></em>' reference.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
	int AND__EREFERENCE0 = OP_BINAIRE__EREFERENCE0;

	/**
   * The feature id for the '<em><b>Left Son</b></em>' reference.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
	int AND__LEFT_SON = OP_BINAIRE__LEFT_SON;

	/**
   * The feature id for the '<em><b>Right Son</b></em>' reference.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
	int AND__RIGHT_SON = OP_BINAIRE__RIGHT_SON;

	/**
   * The number of structural features of the '<em>and</em>' class.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
	int AND_FEATURE_COUNT = OP_BINAIRE_FEATURE_COUNT + 0;

	/**
   * The meta object id for the '{@link Legolang.controlflow.impl.ExprBoolImpl <em>Expr Bool</em>}' class.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @see Legolang.controlflow.impl.ExprBoolImpl
   * @see Legolang.controlflow.impl.ControlflowPackageImpl#getExprBool()
   * @generated
   */
	int EXPR_BOOL = 8;

	/**
   * The number of structural features of the '<em>Expr Bool</em>' class.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
	int EXPR_BOOL_FEATURE_COUNT = EXPR_FEATURE_COUNT + 0;


	/**
   * Returns the meta object for class '{@link Legolang.controlflow.while <em>while</em>}'.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @return the meta object for class '<em>while</em>'.
   * @see Legolang.controlflow.while
   * @generated
   */
	EClass getwhile();

	/**
   * Returns the meta object for class '{@link Legolang.controlflow.if <em>if</em>}'.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @return the meta object for class '<em>if</em>'.
   * @see Legolang.controlflow.if
   * @generated
   */
	EClass getif();

	/**
   * Returns the meta object for class '{@link Legolang.controlflow.Expr <em>Expr</em>}'.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @return the meta object for class '<em>Expr</em>'.
   * @see Legolang.controlflow.Expr
   * @generated
   */
	EClass getExpr();

	/**
   * Returns the meta object for class '{@link Legolang.controlflow.operator <em>operator</em>}'.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @return the meta object for class '<em>operator</em>'.
   * @see Legolang.controlflow.operator
   * @generated
   */
	EClass getoperator();

	/**
   * Returns the meta object for class '{@link Legolang.controlflow.opUnaire <em>op Unaire</em>}'.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @return the meta object for class '<em>op Unaire</em>'.
   * @see Legolang.controlflow.opUnaire
   * @generated
   */
	EClass getopUnaire();

	/**
   * Returns the meta object for class '{@link Legolang.controlflow.opBinaire <em>op Binaire</em>}'.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @return the meta object for class '<em>op Binaire</em>'.
   * @see Legolang.controlflow.opBinaire
   * @generated
   */
	EClass getopBinaire();

	/**
   * Returns the meta object for the reference '{@link Legolang.controlflow.opBinaire#getEReference0 <em>EReference0</em>}'.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @return the meta object for the reference '<em>EReference0</em>'.
   * @see Legolang.controlflow.opBinaire#getEReference0()
   * @see #getopBinaire()
   * @generated
   */
	EReference getopBinaire_EReference0();

	/**
   * Returns the meta object for the reference '{@link Legolang.controlflow.opBinaire#getLeftSon <em>Left Son</em>}'.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @return the meta object for the reference '<em>Left Son</em>'.
   * @see Legolang.controlflow.opBinaire#getLeftSon()
   * @see #getopBinaire()
   * @generated
   */
	EReference getopBinaire_LeftSon();

	/**
   * Returns the meta object for the reference '{@link Legolang.controlflow.opBinaire#getRightSon <em>Right Son</em>}'.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @return the meta object for the reference '<em>Right Son</em>'.
   * @see Legolang.controlflow.opBinaire#getRightSon()
   * @see #getopBinaire()
   * @generated
   */
	EReference getopBinaire_RightSon();

	/**
   * Returns the meta object for class '{@link Legolang.controlflow.not <em>not</em>}'.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @return the meta object for class '<em>not</em>'.
   * @see Legolang.controlflow.not
   * @generated
   */
	EClass getnot();

	/**
   * Returns the meta object for class '{@link Legolang.controlflow.and <em>and</em>}'.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @return the meta object for class '<em>and</em>'.
   * @see Legolang.controlflow.and
   * @generated
   */
	EClass getand();

	/**
   * Returns the meta object for class '{@link Legolang.controlflow.ExprBool <em>Expr Bool</em>}'.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @return the meta object for class '<em>Expr Bool</em>'.
   * @see Legolang.controlflow.ExprBool
   * @generated
   */
	EClass getExprBool();

	/**
   * Returns the factory that creates the instances of the model.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @return the factory that creates the instances of the model.
   * @generated
   */
	ControlflowFactory getControlflowFactory();

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
     * The meta object literal for the '{@link Legolang.controlflow.impl.whileImpl <em>while</em>}' class.
     * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
     * @see Legolang.controlflow.impl.whileImpl
     * @see Legolang.controlflow.impl.ControlflowPackageImpl#getwhile()
     * @generated
     */
		EClass WHILE = eINSTANCE.getwhile();

		/**
     * The meta object literal for the '{@link Legolang.controlflow.impl.ifImpl <em>if</em>}' class.
     * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
     * @see Legolang.controlflow.impl.ifImpl
     * @see Legolang.controlflow.impl.ControlflowPackageImpl#getif()
     * @generated
     */
		EClass IF = eINSTANCE.getif();

		/**
     * The meta object literal for the '{@link Legolang.controlflow.impl.ExprImpl <em>Expr</em>}' class.
     * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
     * @see Legolang.controlflow.impl.ExprImpl
     * @see Legolang.controlflow.impl.ControlflowPackageImpl#getExpr()
     * @generated
     */
		EClass EXPR = eINSTANCE.getExpr();

		/**
     * The meta object literal for the '{@link Legolang.controlflow.impl.operatorImpl <em>operator</em>}' class.
     * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
     * @see Legolang.controlflow.impl.operatorImpl
     * @see Legolang.controlflow.impl.ControlflowPackageImpl#getoperator()
     * @generated
     */
		EClass OPERATOR = eINSTANCE.getoperator();

		/**
     * The meta object literal for the '{@link Legolang.controlflow.impl.opUnaireImpl <em>op Unaire</em>}' class.
     * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
     * @see Legolang.controlflow.impl.opUnaireImpl
     * @see Legolang.controlflow.impl.ControlflowPackageImpl#getopUnaire()
     * @generated
     */
		EClass OP_UNAIRE = eINSTANCE.getopUnaire();

		/**
     * The meta object literal for the '{@link Legolang.controlflow.impl.opBinaireImpl <em>op Binaire</em>}' class.
     * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
     * @see Legolang.controlflow.impl.opBinaireImpl
     * @see Legolang.controlflow.impl.ControlflowPackageImpl#getopBinaire()
     * @generated
     */
		EClass OP_BINAIRE = eINSTANCE.getopBinaire();

		/**
     * The meta object literal for the '<em><b>EReference0</b></em>' reference feature.
     * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
     * @generated
     */
		EReference OP_BINAIRE__EREFERENCE0 = eINSTANCE.getopBinaire_EReference0();

		/**
     * The meta object literal for the '<em><b>Left Son</b></em>' reference feature.
     * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
     * @generated
     */
		EReference OP_BINAIRE__LEFT_SON = eINSTANCE.getopBinaire_LeftSon();

		/**
     * The meta object literal for the '<em><b>Right Son</b></em>' reference feature.
     * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
     * @generated
     */
		EReference OP_BINAIRE__RIGHT_SON = eINSTANCE.getopBinaire_RightSon();

		/**
     * The meta object literal for the '{@link Legolang.controlflow.impl.notImpl <em>not</em>}' class.
     * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
     * @see Legolang.controlflow.impl.notImpl
     * @see Legolang.controlflow.impl.ControlflowPackageImpl#getnot()
     * @generated
     */
		EClass NOT = eINSTANCE.getnot();

		/**
     * The meta object literal for the '{@link Legolang.controlflow.impl.andImpl <em>and</em>}' class.
     * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
     * @see Legolang.controlflow.impl.andImpl
     * @see Legolang.controlflow.impl.ControlflowPackageImpl#getand()
     * @generated
     */
		EClass AND = eINSTANCE.getand();

		/**
     * The meta object literal for the '{@link Legolang.controlflow.impl.ExprBoolImpl <em>Expr Bool</em>}' class.
     * <!-- begin-user-doc -->
		 * <!-- end-user-doc -->
     * @see Legolang.controlflow.impl.ExprBoolImpl
     * @see Legolang.controlflow.impl.ControlflowPackageImpl#getExprBool()
     * @generated
     */
		EClass EXPR_BOOL = eINSTANCE.getExprBool();

	}

} //ControlflowPackage
