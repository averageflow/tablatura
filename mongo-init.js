db.createUser({
    user: 'tablatura_user',
    pwd: 'tablatura_password',
    roles: [
      {
        role: 'dbOwner',
        db: 'tablatura',
      },
    ],
  });