db = db.getSiblingDB('admin');
db.createUser({
    user: "campusfit_user",
    pwd: "campusfit_password",
    roles: [{role: "readWrite", db: "campusfit_db"}]
});