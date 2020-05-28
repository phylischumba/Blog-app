# frozen_string_literal: true

class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)
    @tag.save

    flash.notice = "Tag '#{@tag.title}' Created!"

    redirect_to Tags_path(@tag)
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy

    flash.notice = "Tag '#{@tag.title}' Destroyed!"

    redirect_to Tag_path(@tag)
  end

  def edit
    @tag = Tag.find(params[:id])
  end

  def update
    @tag = Tag.find(params[:id])
    @tag.update(Tag_params)

    flash.notice = "Tag '#{@tag.title}' Updated!"

    redirect_to Tag_path(@tag)
  end
end
