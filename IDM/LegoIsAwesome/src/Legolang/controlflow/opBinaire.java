/**
 */
package Legolang.controlflow;


/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>op Binaire</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link Legolang.controlflow.opBinaire#getEReference0 <em>EReference0</em>}</li>
 *   <li>{@link Legolang.controlflow.opBinaire#getLeftSon <em>Left Son</em>}</li>
 *   <li>{@link Legolang.controlflow.opBinaire#getRightSon <em>Right Son</em>}</li>
 * </ul>
 * </p>
 *
 * @see Legolang.controlflow.ControlflowPackage#getopBinaire()
 * @model
 * @generated
 */
public interface opBinaire extends operator {
	/**
   * Returns the value of the '<em><b>EReference0</b></em>' reference.
   * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>EReference0</em>' reference isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
   * @return the value of the '<em>EReference0</em>' reference.
   * @see #setEReference0(opBinaire)
   * @see Legolang.controlflow.ControlflowPackage#getopBinaire_EReference0()
   * @model
   * @generated
   */
	opBinaire getEReference0();

	/**
   * Sets the value of the '{@link Legolang.controlflow.opBinaire#getEReference0 <em>EReference0</em>}' reference.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @param value the new value of the '<em>EReference0</em>' reference.
   * @see #getEReference0()
   * @generated
   */
	void setEReference0(opBinaire value);

	/**
   * Returns the value of the '<em><b>Left Son</b></em>' reference.
   * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Left Son</em>' reference isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
   * @return the value of the '<em>Left Son</em>' reference.
   * @see #setLeftSon(ExprBool)
   * @see Legolang.controlflow.ControlflowPackage#getopBinaire_LeftSon()
   * @model required="true"
   * @generated
   */
	ExprBool getLeftSon();

	/**
   * Sets the value of the '{@link Legolang.controlflow.opBinaire#getLeftSon <em>Left Son</em>}' reference.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @param value the new value of the '<em>Left Son</em>' reference.
   * @see #getLeftSon()
   * @generated
   */
	void setLeftSon(ExprBool value);

	/**
   * Returns the value of the '<em><b>Right Son</b></em>' reference.
   * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Right Son</em>' reference isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
   * @return the value of the '<em>Right Son</em>' reference.
   * @see #setRightSon(ExprBool)
   * @see Legolang.controlflow.ControlflowPackage#getopBinaire_RightSon()
   * @model required="true"
   * @generated
   */
	ExprBool getRightSon();

	/**
   * Sets the value of the '{@link Legolang.controlflow.opBinaire#getRightSon <em>Right Son</em>}' reference.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @param value the new value of the '<em>Right Son</em>' reference.
   * @see #getRightSon()
   * @generated
   */
	void setRightSon(ExprBool value);

} // opBinaire
