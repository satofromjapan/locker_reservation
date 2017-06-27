class LockersController < ApplicationController
  def index
    @small = Locker.where(size: "small").includes(:reservation).where(reservations: {id: nil})
    @medium = Locker.where(size: "medium").includes(:reservation).where(reservations: {id: nil})
    @large = Locker.where(size: "large").includes(:reservation).where(reservations: {id: nil})
  end
end
