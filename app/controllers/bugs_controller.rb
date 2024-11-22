class BugsController < ApplicationController
  def index
    @bugs = Bug.all
  end

  def new
    @bug = Bug.new
  end

  def create
    @bug = Bug.new(bug_params)

    @bug.save!

    redirect_to bugs_path
  end

  private

  def bug_params
    params.expect(bug: [ :title, :description ])
  end
end
