const functions = require("firebase-functions");
const admin = require("firebase-admin");

admin.initializeApp();

// Trigger khi người dùng mới được tạo
exports.createUserInFirestore = functions.auth.user().onCreate(async (user) => {
  try {
    const userRef = admin.firestore().collection("Users").doc(user.uid);

    // Lưu thông tin người dùng vào Firestore
    await userRef.set({
      uid: user.uid,
      email: user.email,
      displayName: user.displayName || null,
      photoURL: user.photoURL || null,
      createdAt: admin.firestore.FieldValue.serverTimestamp(),
    });

    console.log("User created in Firestore:", user.uid);
  } catch (error) {
    console.error("Error creating user in Firestore:", error);
  }
});
