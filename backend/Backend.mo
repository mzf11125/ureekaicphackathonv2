actor class Backend() {
  stable var counter = 0;

  // Get the current count
  public query func get() : async Nat {
    counter;
  };

  // Increment the count by one
  public func inc() : async () {
    counter += 1;
  };

  // Add `n` to the current count
  public func add(n : Nat) : async () {
    counter += n;
  };

  // Reset the count to zero
  public func reset() : async () {
    counter := 0;
  };

  // Get the current count and reset it to zero
  public func getAndReset() : async Nat {
    let c = counter;
    counter := 0;
    c;
  };


  

};
