/**
 * <copyright>
 * </copyright>
 *
 * $Id$
 */
package Legolang.Robot;

import org.eclipse.emf.ecore.EFactory;

/**
 * <!-- begin-user-doc -->
 * The <b>Factory</b> for the model.
 * It provides a create method for each non-abstract class of the model.
 * <!-- end-user-doc -->
 * @see Legolang.Robot.RobotPackage
 * @generated
 */
public interface RobotFactory extends EFactory {
	/**
	 * The singleton instance of the factory.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	RobotFactory eINSTANCE = Legolang.Robot.impl.RobotFactoryImpl.init();

	/**
	 * Returns a new object of class '<em>Order Robot</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>Order Robot</em>'.
	 * @generated
	 */
	OrderRobot createOrderRobot();

	/**
	 * Returns a new object of class '<em>move</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>move</em>'.
	 * @generated
	 */
	move createmove();

	/**
	 * Returns a new object of class '<em>bip</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>bip</em>'.
	 * @generated
	 */
	bip createbip();

	/**
	 * Returns a new object of class '<em>turn</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>turn</em>'.
	 * @generated
	 */
	turn createturn();

	/**
	 * Returns a new object of class '<em>stop Engine</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>stop Engine</em>'.
	 * @generated
	 */
	stopEngine createstopEngine();

	/**
	 * Returns a new object of class '<em>display</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>display</em>'.
	 * @generated
	 */
	display createdisplay();

	/**
	 * Returns a new object of class '<em>turn Angle</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>turn Angle</em>'.
	 * @generated
	 */
	turnAngle createturnAngle();

	/**
	 * Returns a new object of class '<em>obstacle</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>obstacle</em>'.
	 * @generated
	 */
	obstacle createobstacle();

	/**
	 * Returns a new object of class '<em>has Turned</em>'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return a new object of class '<em>has Turned</em>'.
	 * @generated
	 */
	hasTurned createhasTurned();

	/**
	 * Returns the package supported by this factory.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the package supported by this factory.
	 * @generated
	 */
	RobotPackage getRobotPackage();

} //RobotFactory
