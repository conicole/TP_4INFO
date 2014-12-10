/**
 */
package Legolang.controlflow.impl;

import Legolang.controlflow.ControlflowPackage;
import Legolang.controlflow.ExprBool;
import Legolang.controlflow.opBinaire;

import org.eclipse.emf.common.notify.Notification;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>op Binaire</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * <ul>
 *   <li>{@link Legolang.controlflow.impl.opBinaireImpl#getEReference0 <em>EReference0</em>}</li>
 *   <li>{@link Legolang.controlflow.impl.opBinaireImpl#getLeftSon <em>Left Son</em>}</li>
 *   <li>{@link Legolang.controlflow.impl.opBinaireImpl#getRightSon <em>Right Son</em>}</li>
 * </ul>
 * </p>
 *
 * @generated
 */
public class opBinaireImpl extends operatorImpl implements opBinaire {
	/**
   * The cached value of the '{@link #getEReference0() <em>EReference0</em>}' reference.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @see #getEReference0()
   * @generated
   * @ordered
   */
	protected opBinaire eReference0;

	/**
   * The cached value of the '{@link #getLeftSon() <em>Left Son</em>}' reference.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @see #getLeftSon()
   * @generated
   * @ordered
   */
	protected ExprBool leftSon;

	/**
   * The cached value of the '{@link #getRightSon() <em>Right Son</em>}' reference.
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @see #getRightSon()
   * @generated
   * @ordered
   */
	protected ExprBool rightSon;

	/**
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @generated
   */
	protected opBinaireImpl() {
    super();
  }

	/**
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @generated
   */
	protected EClass eStaticClass() {
    return ControlflowPackage.Literals.OP_BINAIRE;
  }

	/**
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @generated
   */
	public opBinaire getEReference0() {
    if (eReference0 != null && eReference0.eIsProxy()) {
      InternalEObject oldEReference0 = (InternalEObject)eReference0;
      eReference0 = (opBinaire)eResolveProxy(oldEReference0);
      if (eReference0 != oldEReference0) {
        if (eNotificationRequired())
          eNotify(new ENotificationImpl(this, Notification.RESOLVE, ControlflowPackage.OP_BINAIRE__EREFERENCE0, oldEReference0, eReference0));
      }
    }
    return eReference0;
  }

	/**
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @generated
   */
	public opBinaire basicGetEReference0() {
    return eReference0;
  }

	/**
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @generated
   */
	public void setEReference0(opBinaire newEReference0) {
    opBinaire oldEReference0 = eReference0;
    eReference0 = newEReference0;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, ControlflowPackage.OP_BINAIRE__EREFERENCE0, oldEReference0, eReference0));
  }

	/**
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @generated
   */
	public ExprBool getLeftSon() {
    if (leftSon != null && leftSon.eIsProxy()) {
      InternalEObject oldLeftSon = (InternalEObject)leftSon;
      leftSon = (ExprBool)eResolveProxy(oldLeftSon);
      if (leftSon != oldLeftSon) {
        if (eNotificationRequired())
          eNotify(new ENotificationImpl(this, Notification.RESOLVE, ControlflowPackage.OP_BINAIRE__LEFT_SON, oldLeftSon, leftSon));
      }
    }
    return leftSon;
  }

	/**
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @generated
   */
	public ExprBool basicGetLeftSon() {
    return leftSon;
  }

	/**
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @generated
   */
	public void setLeftSon(ExprBool newLeftSon) {
    ExprBool oldLeftSon = leftSon;
    leftSon = newLeftSon;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, ControlflowPackage.OP_BINAIRE__LEFT_SON, oldLeftSon, leftSon));
  }

	/**
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @generated
   */
	public ExprBool getRightSon() {
    if (rightSon != null && rightSon.eIsProxy()) {
      InternalEObject oldRightSon = (InternalEObject)rightSon;
      rightSon = (ExprBool)eResolveProxy(oldRightSon);
      if (rightSon != oldRightSon) {
        if (eNotificationRequired())
          eNotify(new ENotificationImpl(this, Notification.RESOLVE, ControlflowPackage.OP_BINAIRE__RIGHT_SON, oldRightSon, rightSon));
      }
    }
    return rightSon;
  }

	/**
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @generated
   */
	public ExprBool basicGetRightSon() {
    return rightSon;
  }

	/**
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @generated
   */
	public void setRightSon(ExprBool newRightSon) {
    ExprBool oldRightSon = rightSon;
    rightSon = newRightSon;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, ControlflowPackage.OP_BINAIRE__RIGHT_SON, oldRightSon, rightSon));
  }

	/**
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @generated
   */
	public Object eGet(int featureID, boolean resolve, boolean coreType) {
    switch (featureID) {
      case ControlflowPackage.OP_BINAIRE__EREFERENCE0:
        if (resolve) return getEReference0();
        return basicGetEReference0();
      case ControlflowPackage.OP_BINAIRE__LEFT_SON:
        if (resolve) return getLeftSon();
        return basicGetLeftSon();
      case ControlflowPackage.OP_BINAIRE__RIGHT_SON:
        if (resolve) return getRightSon();
        return basicGetRightSon();
    }
    return super.eGet(featureID, resolve, coreType);
  }

	/**
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @generated
   */
	public void eSet(int featureID, Object newValue) {
    switch (featureID) {
      case ControlflowPackage.OP_BINAIRE__EREFERENCE0:
        setEReference0((opBinaire)newValue);
        return;
      case ControlflowPackage.OP_BINAIRE__LEFT_SON:
        setLeftSon((ExprBool)newValue);
        return;
      case ControlflowPackage.OP_BINAIRE__RIGHT_SON:
        setRightSon((ExprBool)newValue);
        return;
    }
    super.eSet(featureID, newValue);
  }

	/**
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @generated
   */
	public void eUnset(int featureID) {
    switch (featureID) {
      case ControlflowPackage.OP_BINAIRE__EREFERENCE0:
        setEReference0((opBinaire)null);
        return;
      case ControlflowPackage.OP_BINAIRE__LEFT_SON:
        setLeftSon((ExprBool)null);
        return;
      case ControlflowPackage.OP_BINAIRE__RIGHT_SON:
        setRightSon((ExprBool)null);
        return;
    }
    super.eUnset(featureID);
  }

	/**
   * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
   * @generated
   */
	public boolean eIsSet(int featureID) {
    switch (featureID) {
      case ControlflowPackage.OP_BINAIRE__EREFERENCE0:
        return eReference0 != null;
      case ControlflowPackage.OP_BINAIRE__LEFT_SON:
        return leftSon != null;
      case ControlflowPackage.OP_BINAIRE__RIGHT_SON:
        return rightSon != null;
    }
    return super.eIsSet(featureID);
  }

} //opBinaireImpl
