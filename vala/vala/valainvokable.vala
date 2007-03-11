/* valainvokable.vala
 *
 * Copyright (C) 2006-2007  Jürg Billeter
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.

 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.

 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301  USA
 *
 * Author:
 * 	Jürg Billeter <j@bitron.ch>
 */

using GLib;

/**
 * Represents a possibly invokable code object.
 */
public interface Vala.Invokable /* : CodeNode */ {
	/**
	 * Returns whether this code object is invokable.
	 *
	 * @return true if invokable, false otherwise
	 */
	public abstract bool is_invokable ();

	/**
	 * Returns the return type of this invokable.
	 *
	 * @return return type
	 */
	public abstract TypeReference get_return_type ();
	
	/**
	 * Returns copy of the list of invocation parameters.
	 *
	 * @return parameter list
	 */
	public abstract ref List<weak FormalParameter> get_parameters ();
}
